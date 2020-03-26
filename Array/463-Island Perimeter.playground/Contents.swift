/**
 * Primary idea is to go through the matrix to check right and down neighbors.
 * Time complexity : O(nm)
 *  Space complexity : O(1)
 */

class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        let height = grid.count
        let width = grid[0].count
        var count = 0
        
        for i in 0..<height {
            for j in 0..<width {
                if (grid[i][j] == 1) {
                    // left
                    if(j == 0 || grid[i][j-1] == 0) {
                        count += 1
                    }
                    
                    //top
                    if(i == 0 || grid[i-1][j] == 0) {
                        count += 1
                    }
                    
                    //right
                    if(j == width-1 || grid[i][j+1] == 0) {
                        count += 1
                    }
                    
                    //bottom
                    if(i == height-1 || grid[i+1][j] == 0) {
                        count += 1
                    }
                }
            }
        }
        
        return count
    }
}
