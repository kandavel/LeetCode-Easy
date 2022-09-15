class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
    var array  =  nums
    array = array.sorted(by: <)
    var counter  = 0
    for i in  0..<array.count {
        if array[i] == 0 {
          continue
        }
        else {
            let temp  = array[i]
            print("Temp  is array index position is \(i) \(temp)")
            counter = counter + 1
           for j  in  i..<array.count  {
                print("\nIndex j - \(j) in value \(array[j] - temp)\n")
                   array[j] =  array[j] - temp
            }
        }
        
    }
    print(array)
   return counter
    }
}