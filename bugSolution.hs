This solution uses pattern matching to handle the case of an empty list. If the list is empty, it returns `Nothing`; otherwise, it returns `Just` the head of the list.  This avoids the runtime error.

```haskell
import Data.Maybe

getHead :: [a] -> Maybe a
getHead [] = Nothing
getHead (x:_) = Just x

main :: IO ()
main = do
  let emptyList = []
  let nonEmptyList = [1,2,3]
  print (getHead emptyList) -- Output: Nothing
  print (getHead nonEmptyList) -- Output: Just 1
```