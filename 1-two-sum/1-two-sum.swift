class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        //Iterate the array,check the  remaing value is present in the disctionary as key
        var dictionary : [Int : Int] = [:]
        for (index, val) in nums.enumerated() {
            let differenceValue = target - val             
            if let valInHashMap = dictionary[differenceValue] {
                return [valInHashMap, index]    
            } else {
                dictionary[val] = index
            }
        }
        return []
    }
}