-- https://blog.miz-ar.info/2015/02/idris-finite-set/
import Data.Fin

%default total

power2m1 : Nat -> Nat
power2m1 Z = Z
power2m1 (S n) = S (2 * power2m1 n)

succPower2m1Power2 : (n : Nat) -> S (power2m1 n) = power 2 n
succPower2m1Power2 Z = Refl
succPower2m1Power2 (S m) =
  let inductiveHypothesis = succPower2m1Power2 m
  in ?proof1

---------- Proofs ----------

Main.proof1 = proof
  intros
  rewrite inductiveHypothesis 
  compute
  rewrite plusSuccRightSucc (power2m1 m) ((power2m1 m) + 0)
  trivial 
