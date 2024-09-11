-- 05 - Simple Inequality

import Mathlib.Tactic

example {a b : ℕ} (h1 : a > b) (h2: b ≥ c) : a > c := by
  calc
  a > b := by rel [h1]
  _ ≥ c := by rel [h2]
