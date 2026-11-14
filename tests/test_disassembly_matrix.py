#!/usr/bin/env python3
"""Exercise x86/ARM listing parsing without requiring either toolchain."""

import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "scripts"))
from run_disassembly_matrix import (
    exported_bodies,
    extract_functions,
    instruction_counts,
)


class DisassemblyParserTests(unittest.TestCase):
    def test_x86_relocations_and_cold_sections(self):
        listing = """
Disassembly of section .text:
0000000000000000 <signed_remainder_runtime>:
   0: idiv rcx
   3: call 8 <signed_remainder_runtime+0x8>
        4: IMAGE_REL_AMD64_REL32 helper
   8: jne 0 <signed_remainder_runtime>
   a: jmp 0 <signed_remainder_runtime>
   c: ret
Disassembly of section .text.unlikely:
0000000000000000 <signed_remainder_runtime.cold>:
   0: call 0
        1: R_X86_64_PLT32 __cxa_throw-0x4
"""
        body = exported_bodies(listing, ("signed_remainder_runtime",))[
            "signed_remainder_runtime"
        ]
        self.assertNotIn(".text.unlikely", body)
        self.assertEqual(
            instruction_counts(body),
            {
                "instructions": 5,
                "divisions": 1,
                "calls": 1,
                "conditional_branches": 1,
            },
        )

    def test_arm_and_coff_names(self):
        listing = """00000000 <_example>:
       0: sdiv x0, x1, x2
       4: udiv x0, x1, x2
       8: bl 0
            8: R_AARCH64_CALL26 helper
       c: cbnz x0, 0
      10: b.ge 0
      14: b 0
      18: ret
"""
        body = exported_bodies(listing, ("example",))["example"]
        self.assertEqual(
            instruction_counts(body),
            {
                "instructions": 7,
                "divisions": 2,
                "calls": 1,
                "conditional_branches": 2,
            },
        )

    def test_missing_empty_and_ambiguous_exports_fail(self):
        for listing in ("", "0000 <f>:\n", "0000 <f.cold>:\n 0: ret\n"):
            with self.assertRaises(ValueError):
                exported_bodies(listing, ("f",))
        with self.assertRaises(ValueError):
            extract_functions("0000 <f>:\n 0: ret\n0001 <f>:\n 1: ret\n")

    def test_att_suffixes_and_helper_calls(self):
        body = "0000 <f>:\n 0: callq 8 <helper>\n 5: retq\n"
        self.assertEqual(instruction_counts(body)["calls"], 1)
        self.assertEqual(instruction_counts(body)["divisions"], 0)
        self.assertEqual(instruction_counts(" 0: idivq %rcx\n")["divisions"], 1)


if __name__ == "__main__":
    unittest.main()
