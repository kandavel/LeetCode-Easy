class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var hashMap : [Int : Int] = [:]
        //FirstIteration update eachElement occurances
        for (index,eachElement) in nums.enumerated() {
            if let elementxists = hashMap[eachElement]   {
                
            }
            else {
                hashMap[eachElement] = 1
            }
        }
        //In the second  iteration find the missing element
        var missingArray : [Int] = []
        for (index,eachElement) in nums.enumerated() {
            if hashMap[index + 1]  == nil {
                missingArray.append(index + 1)
            }
        }
        return  missingArray
    }
}