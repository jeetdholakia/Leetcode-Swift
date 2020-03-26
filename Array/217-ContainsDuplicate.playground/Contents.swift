class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        if nums.count < 2 {
            return false
        }
        return Set(nums).count != nums.count
    }
}

Solution().containsDuplicate([1,2,3,4])
