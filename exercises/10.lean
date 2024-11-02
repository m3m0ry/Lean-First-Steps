-- 10 - Conjunctive "and" Goal
-- Write a Lean program to show that (x^3 = -1) ∧ (x^4 = 1) ∧ (x^5 = -1) given integer x = -1.

import Mathlib.Tactic

example {x : ℤ} (h : x = -1) : x^3 = -1 ∧ x^4 = 1 ∧ x^5 = -1:= by
  constructor
    ⬝ calc
    x^3 = (-1)^3 := by rw [h]
    _ = 1 := by norm_num
    constructor
    ⬝ calc
    x^4 = (-1)^4 := by rw [h]
    _ = 1 := by norm_num
    ⬝ calc
    x^5 = (-1)^5 := by rw [h]
    _ = -1 := by norm_num
