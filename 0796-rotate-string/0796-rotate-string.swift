class Solution {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        let source = s
        var array = Array(source)
        var counter =  source.count
    while String(array) != goal,counter > 0 {
        let firstElement = array.removeFirst()
        print(firstElement)
        array.append(firstElement)
        counter = counter - 1
        if String(array) == goal { return true }
    }
    return false
    }
}