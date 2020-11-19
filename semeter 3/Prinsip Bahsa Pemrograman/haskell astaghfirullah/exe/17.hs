data Maybe a = Nothing | Just a deriving (Show)

instance Eq a => Eq (Maybe a) where
  Nothing == Nothing = True
  Nothing == _ = False
  _== Nothing = False
  Just a == Just b = a == b

instance Eq a => Eq [a] where
  [] == [] = True
  [x] == [y] = x == y
  (x:xs) == (y:ys) = x==y && xs==ys
  _  == _ = False 