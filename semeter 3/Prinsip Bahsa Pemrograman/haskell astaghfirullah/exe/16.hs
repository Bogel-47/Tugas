data Expr' = Val' Int | Add' Expr' Expr'
folde :: (Int -> a) -> (a -> a -> a) -> Expr' -> a
folde f g (Val' x)   = f x
folde f g (Add' x y) = g (folde f g x) (folde f g y)

evalE             :: Expr' -> Int
evalE (Val' n)     =  n
evalE (Add' e1 e2) =  folde toEnum (+) (Add' e1 e2)

numVals             :: Expr' -> Int
numVals (Val' n)     =  1
numVals (Add' e1 e2) =  numVals e1 + numVals e2  