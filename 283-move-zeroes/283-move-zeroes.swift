class Solution {
    func moveZeroes(_ nums: inout [Int]) {
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[i] == 0  {
                nums.swapAt(j, i)
            }
        }
    }
    print(nums)
    }
}