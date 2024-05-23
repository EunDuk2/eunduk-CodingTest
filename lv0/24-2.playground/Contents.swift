import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    var result:[String] = []
    
    for str in picture {
        var line: String = ""
        for ch in str {
            (0..<k).map {_ in line.append(ch) }
        }
        (0..<k).map {_ in result.append(line) }
    }
    return result
}
