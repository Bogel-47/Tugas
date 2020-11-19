import Data.Char ( ord, chr )

make8 :: [Int] -> [Int]
make8 xs = take 8 (xs ++ repeat 0)

bin2int :: [Int] -> Int
bin2int = foldr (\x y -> x + 2*y) 0

int2bin :: Int -> [Int]
int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

chop8 :: [Int] -> [[Int]]
chop8 [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

encode :: String -> [Int]
encode = concatMap (make8 . int2bin . ord)

decode :: [Int] -> String
decode = map (chr . bin2int) . chop8

addParity :: [Int] -> [Int]
addParity [] = []
addParity xs | even (sum xs) = xs ++ [0]
             | otherwise = xs ++ [1]

parCheck :: [Int] -> [Int]
parCheck [] = []
parCheck xs | even (sum xs) = init xs
            | otherwise = error "Parity error!"

transmitting :: String -> String
transmitting = decode . parCheck . addParity . encode
