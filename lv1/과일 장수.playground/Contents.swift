import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var score = score
    var box: [[Int]] = []
    var result = 0
    
    score = score.sorted().reversed()

    for i in stride(from: 0, to: score.count, by: m) {
        var group: [Int] = []
        for j in i..<min(i + m, score.count) {
            group.append(score[j])
        }
        box.append(group)
    }

    box = box.filter { $0.count == m }
    
    for box in box {
        let sum = box.min()! * m
        result += sum
    }
    
    return result
}


print(solution(4, 3, [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2]))
