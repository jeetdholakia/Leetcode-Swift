class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0;
        for num in nums where (i < 2 || num != nums[i-2]) {
            nums[i] = num
            i += 1
        }
        
        return i
    }
}

//Solution().removeDuplicates([1,2,3,4])
