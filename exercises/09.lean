
-- 09 - Disjunctive "or" Goal
-- Write a Lean program to show that (x = 1) ∨ (x^2 = 1) ∨ (x^3 = 1) given integer x = -1.

import Mathlib.Tactic

example {x : ℤ} (h : x = -1) : x = 1 ∨ x^2 = 1 ∨ x^3 = 1 := by
  left
  right
  calc
    x^2 = (-1)^2 := by rw [h]
    _ = 1 := by norm_num
