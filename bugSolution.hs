```haskell
import Data.List (sort)
import Data.Ord (comparing)

main :: IO ()
main = do
  let numbers = [1, 5, 2, 8, 3]
  let sortedNumbers = sort numbers
  print sortedNumbers

  let strings = ["banana", "apple", "cherry"]
  let sortedStrings = sort strings
  print sortedStrings

  -- Solution: Sort using a custom comparison function
  let mixedList = [(1, "one"), (3, "three"), (2, "two")]
  let sortedMixedList = sort (compareByFirst mixedList)
  print sortedMixedList

compareByFirst :: [(Int, String)] -> [(Int, String)]
compareByFirst = sortOn (
 (a,_) -> a
)

-- Alternative solution using sortBy for more control
  let mixedList2 = [1, "apple", 3, "banana"]
  let sortedMixedList2 = sortBy compareMixedList mixedList2
  print sortedMixedList2

compareMixedList :: (Ord a, Ord b) => (a, b) -> (a, b) -> Ordering
compareMixedList (a, b) (c, d) = compare a c

--Helper function for sorting list of tuples by first element
--This function takes a list of tuples, which can be used to convert list of mixed type
--into list of tuples for sorting purposes

sortOn :: (a -> b) -> [a] -> [a]
sortOn f = sortBy (comparing f)
```