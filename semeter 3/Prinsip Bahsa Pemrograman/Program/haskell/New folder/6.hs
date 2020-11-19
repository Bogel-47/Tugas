unfold p h t x | p x = []
				| otherwise = h x : unfold p h t (t x)
int2bin :: Int -> [Int]
int2bin = unfold (==0) (`mod` 2) (`div` 2)

chop8 :: [Int] -> [[Int]]
chop8 = unfold (==[]) (take 8) (drop 8)

map' :: Eq a => (a -> b) -> [a] -> [b]
map' f = unfold (==[]) (f.head) (tail)

iterate :: (Int -> Int) -> Int -> [Int]
iterate f = unfold (>144) id f
