/**
 * Revision practice for majority element problem under different scenarios
 */


class MajorityElement {
    
    
    func findMajorityWithAssumptions(_ nums: [Int]) -> Int {
        
        var candidate = 0
        var count = 0
        
        for num in nums {
            if count == 0 {
                candidate = num
            }
            
            count += (candidate == num) ? 1 : -1
        }
        
        return candidate
    }
    
    func findMajorityWithoutAssumptions(_ nums: [Int]) -> Int {
        var candidate = 0
        var count = 0
        
        for num in nums {
            if count == 0 {
                candidate = num
            }
            
            count += (candidate == num) ? 1 : -1
        }
        
        return candidate
    }
    
    func findMajorityWithDictionary(_ nums: [Int]) -> Int {
        var numDict: [Int: Int] = [:]
        
        for item in nums {
            numDict[item] = (numDict[item] ?? 0) + 1
        }
        
        for item in numDict {
            if item.value > (nums.count/2) {
                return item.key
            }
        }
        
        return 0
    }
    
}
