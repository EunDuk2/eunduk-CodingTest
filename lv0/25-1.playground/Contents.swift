import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result:[[Int]] = []
    (0..<n).map {_ in result.append(Array(repeating: 0, count: n)) }
    
    var round: Int = 1
    var count: Int = 1
    var value: Int = 0
    
    while(count != n*n+1) {
        if round == 1 {
            let row = value
            for i in 0..<n {
                if result[row][i] == 0 {
                    result[row][i] = count
                    print("\(value), \(i), \(count)")
                    count += 1
                    value = i
                }
            }
            round += 1
        } else if round == 2 {
            let column = value
            for i in 0..<n {
                if result[i][column] == 0 {
                    result[i][column] = count
                    count += 1
                    value = i
                }
            }
            round += 1
        } else if round == 3 {
            let row = value
            for i in (0..<n).reversed() {
                if result[row][i] == 0 {
                    result[row][i] = count
                    count += 1
                    value = i
                }
            }
            round += 1
        } else if round == 4 {
            let column = value
            for i in (0..<n).reversed() {
                if result[i][column] == 0 {
                    result[i][column] = count
                    count += 1
                    value = i
                }
            }
            round = 1
        }
    }
    return result
}

print(solution(4))
