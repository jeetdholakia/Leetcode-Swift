/**
 * Time complexity : O(n)
 * Space complexity : O(n)
 */


class Solution {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        let orderedDictionary = Dictionary(uniqueKeysWithValues: order.enumerated().map { ($0.1, $0.0) })
        
        for i in 0..<words.count - 1 {
            let firstWord = Array(words[i])
            let secondWord = Array(words[i + 1])
            var j = 0
            
            while j < min(firstWord.count, secondWord.count) {
                let firstCharacter = firstWord[j]
                let secondChacter = secondWord[j]
                
                guard firstCharacter != secondChacter else {
                    j+=1
                    continue
                }
                
                if orderedDictionary[firstCharacter]! > orderedDictionary[secondChacter]! {
                    return false
                } else {
                    break
                }
            }
            
            // edge case: "apple" vs. "app"; "kuvp" vs. "q"
            if j == firstWord.count && firstWord.count > secondWord.count {
                return false
            }
        }
        return true
    }
}

Solution().isAlienSorted(["zello","leetcode", "alllllo"], "hlabcdefgijkmnopqrstuvwxyz")
// 1. check for word equality
// 2. if words are not equal, store left and right word in a separate variables a and b
// 3. find the position of variable a and b, compare them, if a > b,, then true, else false.
