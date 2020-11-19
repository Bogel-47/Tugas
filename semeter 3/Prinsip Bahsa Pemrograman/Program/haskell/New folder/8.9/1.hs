type Nat = Int
addN :: Nat -> Nat -> Nat
addN m n = m + n

multipNat :: Nat -> Nat -> Nat
multipNat 0 n = 0
multipNat n 0 = 0
multipNat m n = addN n (multipNat (m-1)n)