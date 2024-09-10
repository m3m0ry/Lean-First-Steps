-- 04 - Simple Algebra

import Mathlib.Tactic

example {a b : ℤ} (h1: a * b = 0) : (a + b)^2 = a^2 + b^2 := by
  calc
    (a + b)^2 = a^2 + a*b + a*b + b^2 := by ring
    _ = a^2 + 0 + 0 + b^2 := by rw [h1]
    _ = a^2 + b^2 := by ring
