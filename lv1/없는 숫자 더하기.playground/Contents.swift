import Foundation

func solution(_ numbers:[Int]) -> Int {
    return (0...9).filter { !numbers.contains($0) }.reduce(0,+)
}

print(solution([1,2,3,4,6,7,8,0]))
