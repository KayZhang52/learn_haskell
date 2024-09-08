import Control.Monad (forM_)

-- main prints on IO, and () indicates no return values
printNumbers1 :: IO ()
printNumbers1 = forM_ [1..10] print

-- with recursion
printNumbers2 :: Int -> IO()
printNumbers2 11 = return ()
printNumbers2 n = do
    print n
    printNumbers2 (n+1)