-- 07 - Proof by Cases

import Mathlib.Tactic

example {x : ℝ} (h : x = 1 ∨ x = 2) : x^2 - 3*x + 2 = 0 := by
  obtain ha | hb := h
  · calc
    x^2 - 3*x + 2 = 1^2 - 3*1 + 2 := by rw [ha]
    _ = 0 := by norm_num
  · calc
    x^2 - 3*x + 2 = 2^2 - 3*2 + 2 := by rw [hb]
    _ = 0 := by norm_num
