import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    
    (0..<signs.count).map {
        if signs[$0] {
            result += absolutes[$0]
        } else {
            result -= absolutes[$0]
        }
    }
    
    return result
}
