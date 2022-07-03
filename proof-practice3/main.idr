-- https://www.geisya.or.jp/~mwm48961/kou2/inductive_method4.htm#A1
%default total

sum : Nat -> Nat
sum Z = Z
sum (S k) = S k + sum k

p : (n : Nat) -> (sum n) * 2 = n * (n + 1)
p Z = Refl
p (S k) =
  let inductiveHypothesis = p k in
    ?proofP

---------- Proofs ----------

Main.proofP = proof
  intros
  rewrite sym (multRightSuccPlus k (k + 1)) -- transform right
  rewrite plusCommutative (plus k (mult k (plus k 1))) (plus k 1)
  rewrite plusCommutative 1 k
  rewrite plusSuccRightSucc (plus k (mult k (S k))) k
  rewrite plusCommutative k (plus k (mult k (S k)))
  rewrite sym (multDistributesOverPlusLeft k (sum k) 2)  -- transform left
  rewrite sym inductiveHypothesis
  rewrite plusCommutative 1 k
  rewrite sym (multRightSuccPlus k 1)
  rewrite sym (multRightSuccPlus k 0)
  rewrite sym (multZeroRightZero k)
  rewrite sym (plusZeroRightNeutral k)
  rewrite plusAssociative k k (mult k (S k))
  trivial
