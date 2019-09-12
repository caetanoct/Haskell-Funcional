par_ou_impar :: Int -> Bool
par_ou_impar = (\x -> if (x `mod` 2) == 0 then True else False)

main = do
	print(map par_ou_impar [1,2,3,4,5])