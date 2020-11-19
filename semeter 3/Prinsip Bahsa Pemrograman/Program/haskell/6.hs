module Prime where
	isPrime x y =
		if y == 1 then True
		else if x == 1 then False
		else if x `mod` y == 0 then False
			else isPrime x (y-1)
	cekPrime a = isPrime a (a-1)
	listPrime b = [a | a <- [2..b], cekPrime a]