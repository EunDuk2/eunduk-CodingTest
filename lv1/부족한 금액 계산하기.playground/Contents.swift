import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
    var sum = 0
    
    (1...count).map { sum += $0 * price }
    
    return Int64(sum - money) > 0 ? Int64(sum - money) : 0
}
