class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
    var matrix = Array(repeating: Array(repeating: 0, count: numRows), count: numRows)
    print(matrix)
    for i in 0..<numRows {
        matrix[i][0] = 1
        for j in 1..<numRows where i > 0 {
            matrix[i][j] = matrix[i-1][j] + matrix[i-1][j-1]
        }
        print("\nFor the ithRow ::\(i)\(matrix)\n")
        
    }
    return matrix.compactMap{ $0.filter { $0 > 0 }}
    }
}