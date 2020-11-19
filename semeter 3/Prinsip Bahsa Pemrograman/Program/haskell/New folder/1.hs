filt :: [a] -> (a -> Bool) -> (a -> b) -> [b]
filt xs p f  = map f (filter p xs)