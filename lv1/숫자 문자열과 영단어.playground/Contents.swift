import Foundation

func solution(_ s:String) -> Int {
    let numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var s = s
    
    for i in 0..<numbers.count {
        s = s.replacingOccurrences(of: numbers[i], with: String(i))
    }
    
    return Int(s)!
}
