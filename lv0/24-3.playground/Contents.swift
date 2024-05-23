import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var arr = arr
    
    if k.isMultiple(of: 2) {
        (0..<arr.count).map { arr[$0] += k }
    } else if !k.isMultiple(of: 2) {
        (0..<arr.count).map { arr[$0] *= k }
    }
    
    return arr
}
