data TreeBal a = LeafBal a | NodeBal (TreeBal a) (TreeBal a) deriving Show
balance     :: [a] -> TreeBal a
balance []  =  error "Provide a list that is non-empty!"
balance [x] =  LeafBal x
balance xs  =  NodeBal (balance (fst (halveL xs))) (balance (snd (halveL xs)))  

halveL :: [a] -> ([a],[a])
halveL [] = ([],[])
halveL xs = splitAt (half xs) xs
  where
    half :: [a] -> Int
    half xs = div (length xs) 2 
