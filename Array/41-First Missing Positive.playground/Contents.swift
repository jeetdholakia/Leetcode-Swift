/**
* Primary idea: Use a set to hold number in the array and iterate through 1...nums.count to find the missing one
*/

class Solution {
    /**
     * Time Complexity: O(n^2)
     */
    func firstMissingPositive(_ nums: [Int]) -> Int {
        
        if nums.count == 0 {
            return 1
        }
        
        var dict: [Int: Int] = [:]
        
        for num in nums {
            dict[num] = 1
        }
        
        for i in 1...nums.count {
            if let _ = dict[i] {
                continue
            } else {
                return i
            }
        }
        
        return nums.count + 1
    }
    
    
    /**
     * Time complexity: O(n^2)
     */
    func firstMissingPositiveUsingArrayOnly(_ nums: [Int]) -> Int {
        
        if nums.count == 0 {
            return 1
        }
        
        for i in 1...nums.count {
            if let _ = nums.firstIndex(of: i) {
                continue
            } else {
                return i
            }
        }
        
        return nums.count + 1
    }
    
    /**
     * Time complexity: O(n)
     */
    func firstMissingPositiveUsingSet(_ nums: [Int]) -> Int {
        let set = Set(nums)
        
        for i in 0..<nums.count {
            if !set.contains(i + 1) {
                return i + 1
            }
        }
        
        return nums.count + 1
    }
}

Solution().firstMissingPositiveUsingArrayOnly([-2])
