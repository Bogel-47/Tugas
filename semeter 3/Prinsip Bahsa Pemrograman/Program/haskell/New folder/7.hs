parity :: [Int] -> [Int]
parity xs | even (sum xs) = xs ++ [0]
              |otherwise = xs ++ [1]

cek :: [Int] -> [Int]
cek [] = []
cek xs | even (sum xs) = init xs
		| otherwise = error "Error"
		