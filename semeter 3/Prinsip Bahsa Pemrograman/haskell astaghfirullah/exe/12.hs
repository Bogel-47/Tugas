-- Although not included in appendix B, the standard prelude defines
-- data Ordering = LT | EQ | GT
-- together with a function
-- compare :: Ord a => a -> a -> Ordering
-- that decides if one value in an ordered type is less than (LT), equal to (EQ), or greater than (GT)
-- another value. Using this function, redefine the function occurs :: Ord a => a -> Tree a ->
-- Bool for search trees. Why is this new definition more efficient than the original version?

data Tree a = Leaf a | Node (Tree a) a (Tree a)

t :: Tree Int
t = Node (Node (Leaf 1) 3 (Leaf 4)) 5 (Node (Leaf 6) 7 (Leaf 9))

-- More efficient because values are compared at most once
occurs :: Ord a => a -> Tree a -> Bool
occurs x (Leaf y) = x == y
occurs x (Node l y r) = case compare x y of LT -> occurs x l
                                            EQ -> True
                                            GT -> occurs x r