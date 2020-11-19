module GCD where
	gcde a 0 = a
	gcde a b = gcde b(a `mod` b) 