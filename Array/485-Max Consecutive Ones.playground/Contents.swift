/*
 Given a binary array, find the maximum number of consecutive 1s in this array.

 Example 1:
 Input: [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s.
     The maximum number of consecutive 1s is 3.
 */

/*
 Solution
 Time Complexity: O(n)
 Space Complexity: O(1)
 */

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var localMax = 0, globalMax = 0
        for i in 0..<nums.count {
            if nums[i] == 1 {
                localMax += 1
                globalMax = max(globalMax, localMax)
            } else {
                localMax = 0
            }
        }
        return globalMax
    }
}

Solution().findMaxConsecutiveOnes([1,1,0,0,1])
