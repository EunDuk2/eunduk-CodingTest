import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result:[[Int]] = []
    
    for i in 0..<n {
        var temp:[Int] = []
        (0..<n).map {_ in temp.append(0) }
        temp[i] = 1
        result.append(temp)
    }
    
    return result
}
