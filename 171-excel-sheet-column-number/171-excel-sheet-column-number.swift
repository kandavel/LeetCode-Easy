class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        var result :Int  = 0
        for eachChar in columnTitle {
        let startCode = Character("A").asciiValue! - 1 // Ascii value for A ->65 ,make sure difference is always 1 even for A, to show column 1 for A
        let charCode = eachChar.asciiValue!
        let difference =  Int(charCode - startCode)
        let d  = Int(UInt8(difference))
        result  = result * 26 + d
        }
        return result
    }
}