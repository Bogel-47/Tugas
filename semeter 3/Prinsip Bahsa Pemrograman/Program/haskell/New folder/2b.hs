any' :: (a -> Bool) -> [a] -> Bool
any' p = or.map p