-- 03 - Symbols, No Numbers

import Mathlib.Tactic

example {x y z : ℝ} (h1 : z = y) (h2: y = x) : z = x := by
  calc
    z = y := by rw [h1]
    _ = x := by rw [h2]
