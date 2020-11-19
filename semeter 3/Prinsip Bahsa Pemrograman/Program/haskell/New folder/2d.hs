dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' p (x:xs) | p x  = x : dropWhile' p xs
					| dropWhile = x:xs