altMap :: (a->b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []
altMap f _ (x0 : []) = f x0 : []
altMap f g (x0:x1:[]) = f x0 : g x1 : []
altMap f g (x0:x1:xs) = f x0 : g x1 : altMap f g xs