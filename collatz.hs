collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz n
  | even n = n:collatz (div n 2)
  | odd n = n:collatz (n*3 + 1)
