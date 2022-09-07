class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
       var finalArray : [Int] = nums
    var dicationary : [Int : Int] = [:]
    var startindex  =  0
    let endIndex  = nums.count
    while startindex < nums.count {
        let num  = nums[startindex]
        if  let index  = dicationary[num] {
            nums.remove(at: index)
        }
        else {
            dicationary[num] = startindex
            startindex = startindex + 1
        }
        
    }
    return  startindex
    }
}