data TreeBal a = LeafBal a | NodeBal (TreeBal a) (TreeBal a) deriving Show
balance     :: [a] -> TreeBal a
balance []  =  error "Tidak Boleh Kosong"
balance [y] =  LeafBal y
balance ys  =  NodeBal (balance (fst (halveL ys))) (balance (snd (halveL ys)))  

halveL :: [a] -> ([a],[a])
halveL [] = ([],[])
halveL ys = splitAt (half ys) ys
  where
    half :: [a] -> Int
    half ys = div (length ys) 2 