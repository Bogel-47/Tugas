data TreeBal a = LeafBal a | NodeBal (TreeBal a) (TreeBal a) deriving Show
tBal :: TreeBal Int
tBal = NodeBal (NodeBal (LeafBal 1) (LeafBal 4))
				(NodeBal (LeafBal 6) (LeafBal 9))
tBal2 :: TreeBal Int
tBal2 = NodeBal
			(NodeBal
				(LeafBal 4)
				(NodeBal
					(LeafBal 13)
					(LeafBal 0)))
			(NodeBal
				(NodeBal
					(LeafBal 333)
					(NodeBal
						(LeafBal 6)
						(LeafBal 9)))
				(LeafBal 42))
isBal :: TreeBal Int -> Bool
isBal (LeafBal _) = True
isBal (NodeBal l r) = (diffLeaves <= 1) && isBal l && isBal r
	where
		diffLeaves = abs (numLeaves l - numLeaves r)

		numLeaves :: TreeBal Int -> Int
		numLeaves (LeafBal _) = 1
		numLeaves (NodeBal l r) = numLeaves l + numLeaves r