data Expr' = Val' Int | Add' Expr' Expr' | Mul' Expr' Expr' deriving stock Show
data Op = EVALa Expr' | ADD Int | EVALm Expr' | MUL Int deriving stock Show
type Cont = [Op]

value' :: Expr' -> Int
value' = flip eval' []

eval' :: Expr' -> Cont -> Int
eval' (Val' n  ) c = exec c n
eval' (Add' n m) c = eval' n (EVALa m : c)
eval' (Mul' n m) c = eval' n (EVALm m : c)

exec :: Cont -> Int -> Int
exec []            n = n
exec (EVALa y : c) n = eval' y (ADD n : c)
exec (EVALm y : c) n = eval' y (MUL n : c)
exec (ADD   n : c) m = exec c (n + m)
exec (MUL   n : c) m = exec c (n * m)