import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result:[Int] = []
    
    for value in arr {
        if result.count < k {
            if !result.contains(value) {
                result.append(value)
            }
        }
    }
    
    if result.count < k {
        (0..<k-result.count).map { _ in result.append(-1) }
    }
    return result
}

print(solution([0, 1, 1, 1, 1], 4))
