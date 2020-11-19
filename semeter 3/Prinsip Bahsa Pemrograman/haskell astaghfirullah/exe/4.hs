decToint :: [Int] -> Int
decToint = foldl (\v -> \x -> 10*v + x) 0
