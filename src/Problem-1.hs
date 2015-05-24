{-
    If we list all the natural numbers below 10 that are multiples of 3
    or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

    Find the sum of all the multiples of 3 or 5 below 1000.
-}

main :: IO ()
main = print answer

-- | The upper bound set in the question.
maxValue :: Integer
maxValue = 1000
valueList :: [Integer]
valueList = [1..(maxValue - 1)]

isMultiple :: Integral a => a -> a -> Bool
isMultiple x multiple = x `mod` multiple == 0

answer :: Integer
answer = sum [x | x <- valueList, x `isMultiple` 3 || x `isMultiple` 5]
