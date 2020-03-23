/**
 * Primary idea: Traverse the array and find the element that repeats the most
 * Assuming a majority element always exists
 * Time complexity: O(n)
 * Space complexity: O(1)
 */

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0, candidate = 0
        
        for num in nums {
            if count == 0 {
                candidate = num
            }
            
            count += (candidate == num) ? 1 : -1
        }
        
        return candidate
    }
}

Solution().majorityElement([1,3,3,3,2])
