main: main.idr
	idris --check main.idr

inputProve: main.idr
	echo "\
:prove proofP\n\
intros\n\
rewrite sym (multRightSuccPlus k (k + 1))\n\
rewrite plusCommutative (plus k (mult k (plus k 1))) (plus k 1)\n\
rewrite plusCommutative 1 k\n\
rewrite plusSuccRightSucc (plus k (mult k (S k))) k\n\
rewrite plusCommutative k (plus k (mult k (S k)))\n\
rewrite sym (multDistributesOverPlusLeft k (sum k) 2)\n\
rewrite sym inductiveHypothesis\n\
rewrite plusCommutative 1 k\n\
rewrite sym (multRightSuccPlus k 1)\n\
rewrite sym (multRightSuccPlus k 0)\n\
rewrite sym (multZeroRightZero k)\n\
rewrite sym (plusZeroRightNeutral k)\n\
rewrite plusAssociative k k (mult k (S k))\n\
trivial\n\
qed" | idris main.idr
