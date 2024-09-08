binarySearch :: Ord a => [a] -> a -> Maybe Int
binarySearch xs target = search xs target 0 (length xs - 1)

-- Ord a indicates that a is a comparable
search :: Ord a => [a] -> a -> Int -> Int -> Maybe Int
search xs target low high
    | low > high = Nothing  -- Base case: target is not found
    | otherwise =
        let mid = (low + high) `div` 2
            midVal = xs !! mid
        -- 'let' and 'in' keyword are used to create variables within their limited scope
        -- compare :: int => int => EQ/LT/GT
        -- case..of used as a switch statement.
        in case compare target midVal of
            EQ -> Just mid              -- Found the target
            LT -> search xs target low (mid - 1)  -- Search in the left half
            GT -> search xs target (mid + 1) high -- Search in the right half
