%default total

modusPonens : ((p -> q), p) -> q
modusPonens (hpq, hp) = hpq hp

orComm : Either a b -> Either b a
orComm (Left  a) = Right a
orComm (Right a) = Left a

deMorgan : (Not (Either p q) ) -> (Not p, Not q)
deMorgan hnepq = (np, nq)
where
  np = hnepq . Left
  nq = hnepq . Right

deMorgan2 : (Not p, Not q) -> (Not (Either p q) )
deMorgan2 (hnp, hnq) (Left  p) = hnp p 
deMorgan2 (hnp, hnq) (Right q) = hnq q 

oneEqualOne : 1 = 1
oneEqualOne = Refl

onePlusOneEqualTwo : 1 + 1 = 2
onePlusOneEqualTwo = Refl

onePlusNEqualNPlusOne : (n: Nat) -> 1 + n = n + 1
onePlusNEqualNPlusOne Z = Refl
onePlusNEqualNPlusOne (S k) =
  rewrite onePlusNEqualNPlusOne k
  in Refl
