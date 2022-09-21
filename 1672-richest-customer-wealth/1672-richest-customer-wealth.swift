class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
    var maxWealth  = 0
    for i in 0..<accounts.count {
        var wealth  = 0
        for j in 0..<accounts[i].count {
            wealth = wealth + accounts[i][j]
        }
        maxWealth  = max(maxWealth,wealth)
    }
    print(maxWealth)
    return maxWealth
    }
}