class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var array = nums
        var hashMap : [Int : Int] = [:]
        for eachNum in array {
            if let valueExist = hashMap[eachNum] {
                hashMap[eachNum] =  valueExist + 1
                return true
            }
            else {
               hashMap[eachNum] = 1 
            }
        }
        return false
    }
}