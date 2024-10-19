import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result:[Int] = []
    
    // commands 반복문
    for command in commands {
        let (i, j, k) = (command[0], command[1], command[2])
        var newArr:[Int] = Array(array[i-1...j-1])
        newArr.sort()
        
        result.append(newArr[k-1])
    }
    
    return result
}
