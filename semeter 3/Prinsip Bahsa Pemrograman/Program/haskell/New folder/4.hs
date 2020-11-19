dec2int :: [Int] -> Int 
dec2int = foldl (\v -> \x -> 10*v + x) 0