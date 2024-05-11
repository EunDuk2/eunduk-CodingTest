import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var arr = arr
    
    if arr.count % 2 == 0 {
        (0..<arr.count).filter { $0 % 2 == 1 }.map { arr[$0] += n }
    } else if arr.count % 2 == 1 {
        (0..<arr.count).filter { $0 % 2 == 0 }.map { arr[$0] += n }
    }
    
    return arr
}

print(solution([49, 12, 100, 276, 33], 27))
