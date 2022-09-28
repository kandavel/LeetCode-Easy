class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
    var resultArray = [[Int]](repeating: [Int](repeating: 0, count: matrix.count), count: matrix[0].count)
    for i in 0..<matrix.count {
        for j in 0..<matrix[i].count {
            if i == j {
                resultArray[i][j] =  matrix[i][j]
            }
            else {
                resultArray[j][i] = matrix[i][j]
            }
        }
    }
    print(resultArray)
    return resultArray 
    }
}