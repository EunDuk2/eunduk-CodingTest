import Foundation

func solution(_ s:String) -> Int {
    var resultCount = 0
    var x:Character? = nil
    var xCount = 0
    var difCount = 0
    
    for chr in s {
        if x == nil {
            x = chr
            xCount += 1
            continue
        }
        if chr == x {
            xCount += 1
        } else {
            difCount += 1
        }
        if xCount == difCount {
            resultCount += 1
            xCount = 0
            difCount = 0
            x = nil
        }
    }
    return x != nil ? resultCount+1 : resultCount
}

print(solution("abracadabra"))
