{-
    The prime factors of 13195 are 5, 7, 13 and 29.

    What is the largest prime factor of the number 600851475143 ?
-}

main :: IO ()
main = print answer

-- | The upper bound set in the question.
target :: Integer
target = 13195
-- target = 600851475143

answer :: Integer
answer = last $ primesOf target

primesOf :: Integer -> [Integer]
primesOf n = filter isPrime $ factors target

isPrime :: Integer -> Bool
isPrime n
    | n < 2 = False
isPrime n = length (factors n) == 2  -- One and itself.

factors :: Integer -> [Integer]
factors n = [x | x <- [1..(n `div` 2)], n `rem` x == 0] ++ [n]
