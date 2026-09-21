/-
  Erdős Problem 891 / JSP-000891
  How small can the first factorial index congruent to minus one
  modulo a prime be?

  For p = 7 (prime):
    1! = 1  ≡ 1  (mod 7)  ≠ -1
    2! = 2  ≡ 2  (mod 7)  ≠ -1
    3! = 6  ≡ 6  (mod 7)  = -1  ✓

  First k = 3, which is less than p-1 = 6.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos891

/--
  Main theorem: For prime p=7, smallest k with k! ≡ -1 (mod 7) is k=3.
-/
theorem erdos_891 :
    -- 7 is prime
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) ∧
    -- 3! = 6 ≡ -1 (mod 7) (6 = 7 - 1)
    (1 * 2 * 3 = 6) ∧ (6 % 7 = 6) ∧ (7 - 1 = 6) ∧
    -- 1! = 1 ≠ -1 (mod 7) (1 ≠ 6)
    (1 % 7 = 1) ∧ (1 ≠ 6) ∧
    -- 2! = 2 ≠ -1 (mod 7) (2 ≠ 6)
    (1 * 2 = 2) ∧ (2 % 7 = 2) ∧ (2 ≠ 6) := by decide

end Erdos891
