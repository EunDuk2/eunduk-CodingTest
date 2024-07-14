import Foundation

func solution(_ food:[Int]) -> String {
    var result:[Int] = []
    
    for i in 1..<food.count {
        let count = food[i] / 2
        (0..<count).map {_ in result.append(i) }
    }
    result = result + [0] + result.reversed()
    
    return result.reduce("") { $0 + String($1) }
}
