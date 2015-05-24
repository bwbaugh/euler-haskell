{-
    If we list all the natural numbers below 10 that are multiples of 3
    or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

    Find the sum of all the multiples of 3 or 5 below 1000.
-}

main :: IO ()
main = print answer

-- | The upper bound set in the question.
maxValue = 1000

-- | Returns the multiples of some list.
multiples multiple = [x | x <- [1..(maxValue - 1)], x `mod` multiple == 0]

multiplesOfThree = multiples 3
multiplesOfFive = multiples 5

answer = sum
    (
        multiplesOfThree
        ++
        [x | x <- multiplesOfFive, not (x `elem` multiplesOfThree)]
    )
