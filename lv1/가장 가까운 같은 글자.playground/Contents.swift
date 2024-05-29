import Foundation

func solution(_ s:String) -> [Int] {
    var dic:[String:Int] = [:]
    var result:[Int] = []
    
    s.enumerated().map {
        if dic[String($0.element)] == nil {
            dic[String($0.element)] = $0.offset
            result.append(-1)
        } else {
            let temp = $0.offset - dic[String($0.element)]!
            result.append(temp)
            dic[String($0.element)] = $0.offset
            
        }
    }
    
    return result
}
