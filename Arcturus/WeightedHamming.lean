/-
Copyright (c) 2026 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Data.Fintype.BigOperators

/-!
# Weighted Hamming distance

The weighted Hamming distance between two finite binary strings is the sum of
the weights at coordinates where they differ. Natural-number weights allow some
coordinates to be ignored by assigning them weight zero.
-/

public section

open scoped BigOperators

namespace Arcturus.WeightedHamming

variable {n : ℕ}

/-- Sum of the coordinate weights at which two binary strings differ. -/
def distance (w : Fin n → ℕ) (x y : Fin n → Bool) : ℕ :=
  ∑ i, if x i = y i then 0 else w i

/-- The defining formula for weighted Hamming distance. -/
theorem distance_def (w : Fin n → ℕ) (x y : Fin n → Bool) :
    distance w x y = ∑ i, if x i = y i then 0 else w i := (rfl)

/-- A binary string has weighted distance zero from itself. -/
@[simp]
theorem distance_self (w : Fin n → ℕ) (x : Fin n → Bool) : distance w x x = 0 := by
  simp [distance]

/-- Weighted Hamming distance is symmetric. -/
theorem distance_comm (w : Fin n → ℕ) (x y : Fin n → Bool) :
    distance w x y = distance w y x := by
  simp only [distance, eq_comm]

end Arcturus.WeightedHamming
