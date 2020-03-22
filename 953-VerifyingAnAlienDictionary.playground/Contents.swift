/**
 * Time complexity : O(n)
 * Space complexity : O(n)
 */


class Solution {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        let orderedDictionary = Dictionary(uniqueKeysWithValues: order.enumerated().map { ($0.1, $0.0) })
        
        for i in 0..<words.count - 1 {
            
        }
        
        return true
    }
    
    
    
}

Solution().isAlienSorted(["hello","leetcode"], "hlabcdefgijkmnopqrstuvwxyz")
// 1. check for word equality
// 2. if words are not equal, store left and right word in a separate variables a and b
// 3. find the position of variable a and b, compare them, if a > b,, then true, else false.
