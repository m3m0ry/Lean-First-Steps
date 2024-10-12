-- 08 - Existence
-- Write a Lean program to prove there exists a natural number larger than 5.

import Mathlib.Tactic

example : ∃ n: ℕ, n > 5 := by
  use 6
  calc
    6 > 5 := by norm_num

-- more concise
example : ∃ n: ℕ, n > 5 := by
  use 6
  norm_num
