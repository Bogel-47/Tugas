data Expr' = Val' Int | Add' Expr' Expr'
folde :: (Int -> i) -> (i -> i -> i) -> Expr' -> i
folde f g (Val' x)   = f x
folde f g (Add' x y) = g (folde f g x) (folde f g y)

evalE             :: Expr' -> Int
evalE (Val' k)     =  k
evalE (Add' e1 e2) =  folde toEnum (+) (Add' e1 e2)

numVals             :: Expr' -> Int
numVals (Val' k)     =  1
numVals (Add' e1 e2) =  numVals e1 + numVals e2  