data Expr' = Val' Int | Add' Expr' Expr'
folde :: (Int -> i) -> (i -> i -> i) -> Expr' -> i
folde f g (Val' x)   = f x
folde f g (Add' x y) = g (folde f g x) (folde f g y)