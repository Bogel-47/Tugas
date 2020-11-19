mapF :: (a -> b) -> [a] -> [b]
mapF f  = foldr ((:).f) []

filterF ::  (a -> Bool) -> [a] -> [a]
filterF p = foldr (\x xs -> if p  x then x : xs else xs) []
