-- 06 - Intermediate Result

import Mathlib.Tactic

example {a b : ℤ} (h1 : a = b + c) (h2: b - 1 = 0) (h3: c + 1 = 2) : a = 2 := by
  have h4: b = 1 := by linarith [h2]
  have h5: c = 1 := by linarith [h3]
  calc
    a = b + c := by rw [h1]
    _ = 1 + c := by rw [h4]
    _ = 1 + 1 := by rw [h5]
    _ = 2 := by norm_num
