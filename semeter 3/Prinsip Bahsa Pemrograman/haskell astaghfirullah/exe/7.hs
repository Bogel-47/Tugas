parity :: [Int] -> [Int]
parity [] = []
parity xs | even (sum xs) = xs ++ [0]
          | otherwise = xs ++ [1]

parityCheck :: [Int] -> [Int]
parityCheck [] = []
parityCheck  xs | even (sum xs) = init xs
                | otherwise = error "Parity error!"
                