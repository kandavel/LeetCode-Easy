class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.isEmpty {
        return ""
    }
    else {
        var result = ""
                var s = strs
                s.sort{ $0.count < $1.count }
                print(s)
         
                if strs.count == 1 {
                    return strs[0]
                }
                for i in 0..<strs.count-1 {
                    var r2 = ""
                   // print("I index is printing :: \(i)")
                    for j in 0..<s[i].count {
                        print("j index is printing :: \(j)")
                        let x1 = Array(s[i])
                        let x2 = Array(s[i+1])
                        let x = Array(s[i])[j]
                        if x == Array(s[i+1])[j] {
                            r2 += String(x)
                        }
                        else{
                            break
                        }
                    }
                    if i == 0 {
                        result = r2
                    }
                   if r2.count < result.count {
                       result = r2
                   }
                }
                return result
            }
    }    
}