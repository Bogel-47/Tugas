unfld p h t x | p x = []
               | otherwise = h x : unfld p h t (t x)

int2binUn :: Int ->[Int]
int2binUn = unfld (== 0) (`mod` 2) (`div` 2)

chop8Un :: [Int] -> [[Int]]
chop8Un = unfld (== []) (take 8) (drop 8)

mapUn :: Eq a => (a -> b) -> [a] -> [b]
mapUn f = unfld (== []) (f . head ) (tail )

iterateUn :: (Int -> Int) -> Int -> [Int]
iterateUn f = unfld (> 144) id f
