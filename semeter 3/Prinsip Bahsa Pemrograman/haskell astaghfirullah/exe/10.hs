altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []
altMap f _ (x0:[]) = f x0 : []
altMap f g (x0:x1:[]) = f x0 : g x1 : []
altMap f g (x0:x1:xs) = f x0 : g x1 : altMap f g xs


luhnDouble :: Int -> Int
luhnDouble n 
    | n*2 < 9   = n*2
    | otherwise = (n*2 - 9)

luhn2 :: [Int] -> Bool
luhn2 ns | mod ((sum . altMap id luhnDouble . reverse) ns) 10 == 0 = True
         | otherwise = False
