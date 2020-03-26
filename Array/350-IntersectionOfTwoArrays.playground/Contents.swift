class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var numsFreq = Dictionary(nums1.map { ($0, 1) }, uniquingKeysWith: +)
        var res = [Int]()
        
        for num in nums2 {
            if let freq = numsFreq[num], freq > 0 {
                res.append(num)
                numsFreq[num] = freq - 1
            }
        }
        
        return res
    }
}

Solution().intersect([4,9,5,7], [9,4,9,8,4])
