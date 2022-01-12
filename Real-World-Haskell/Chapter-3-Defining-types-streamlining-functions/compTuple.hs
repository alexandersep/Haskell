-- e.g. complicated (True, 'a', [1,2,3,4], 5) 
-- is going to give the output ('a', [2,3,4])
-- this will not work if [] as it is not x:xs
complicated (True, a, x:xs, 5) = (a, xs)
