data Exp =
    Constantization Int
  | Addition Exp Exp
  | Multiplication Exp Exp
  deriving Show

data Oper = 
    EVALUATE Exp
  | AD Int
  | MU Int
type Controls = [Oper]

-- Evaluates an expression in the context of a control stack.
evalExp                           :: Exp -> Controls -> Int
evalExp (Constantization n) c     =  execOper c n
evalExp (Addition e1 e2) c        =  evalExp e1 (EVALUATE e2 : AD 0 : c)
evalExp (Multiplication e1 e2) c  =  evalExp e1 (EVALUATE e2 : MU 1 : c)


-- Executes the control stack in the context of an integer operand.
execOper                             :: Controls -> Int -> Int
execOper [] n                        =  n
execOper (EVALUATE e1 : AD 0 : c) n  =  evalExp e1 (AD n : c)
execOper (EVALUATE e1 : MU 1 : c) n  =  evalExp e1 (MU n : c)
execOper (AD n : c) m                =  execOper c (n+m)
execOper (MU n : c) m                =  execOper c (n*m)


valExp    :: Exp -> Int
valExp e  =  evalExp e []

exp0 = Constantization 0

exp1 = Constantization 1

exp2 = Addition exp0 exp1

exp3 = Multiplication (Constantization 5) (Constantization 5)

exp4 = Addition exp0 exp2

exp5 =
  Addition
    (Multiplication exp0 exp1)
    (Multiplication exp1 exp2)