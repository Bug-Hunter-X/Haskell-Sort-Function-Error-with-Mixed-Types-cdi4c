```haskell
import Data.List (sort)

main :: IO ()
main = do
  let numbers = [1, 5, 2, 8, 3]
  let sortedNumbers = sort numbers
  print sortedNumbers -- Output: [1,2,3,5,8]

  let strings = ["banana", "apple", "cherry"]
  let sortedStrings = sort strings
  print sortedStrings -- Output: ["apple","banana","cherry"]

  -- Problem starts here:
  let mixedList = [1, "apple", 3, "banana"]
  let sortedMixedList = sort mixedList
  print sortedMixedList -- This will cause a runtime error!
```