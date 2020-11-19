data Prp =
    Constantification Bool
  | Var Char
  | Not Prp
  | Equivalence Prp Prp
  | Disjunction Prp Prp
  | And Prp Prp
  | Imply Prp Prp

type Matches key value = [(key,value)]

type Substitution = Matches Char Bool

rmdups :: Eq a => [a] -> [a]
rmdups [] = []
rmdups (x:xs)   | x `elem` xs   = rmdups xs
                | otherwise     = x : rmdups xs

findInTable :: Eq k => k -> Matches k v -> v
findInTable k t = head [v | (k',v) <- t, k == k']

p1 :: Prp
p1 = And (Var 'A') (Not (Var 'A'))
p2 :: Prp
p2 = Imply (And (Var 'A') (Var 'B')) (Var 'A')

evalPrp :: Substitution -> Prp -> Bool
evalPrp _ (Constantification b)  =  b
evalPrp s (Equivalence p1 p2)    =  not (evalPrp s p1 && evalPrp s p2)
evalPrp s (Var c)         =  findInTable c s 
evalPrp s (Not p)           =  not (evalPrp s p)
evalPrp s (And p1 p2)    =  evalPrp s p1 && evalPrp s p2
evalPrp s (Imply p1 p2)    =  evalPrp s p1 <= evalPrp s p2  

variables :: Prp -> [Char]
variables (Constantification _)  =  [] 
variables (Var c)        =  [c]
variables (Equivalence p1 p2)   =  variables p1 ++ variables p2
variables (Not p)          =  variables p
variables (Disjunction p1 p2)   =  variables p1 ++ variables p2
variables (And p1 p2)   =  variables p1 ++ variables p2
variables (Imply p1 p2)   =  variables p1 ++ variables p2

boolsAll :: Int -> [[Bool]]
boolsAll 0  =  [[]]
boolsAll n  =  map (False :) bss ++ map (True :) bss
                 where
                   bss = boolsAll (n-1)

substitutions :: Prp -> [Substitution]
substitutions p  =  map (zip vs) (boolsAll (length vs))
                    where
                      vs = rmdups $ variables p

isItATautology :: Prp -> Bool
isItATautology p  =  and [evalPrp s p | s <- substitutions p]
