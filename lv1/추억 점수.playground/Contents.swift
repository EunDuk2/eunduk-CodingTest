import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var result:[Int] = []
    var dic:[String:Int] = [:]
    
    for i in 0..<name.count {
        dic.updateValue(yearning[i], forKey: name[i])
    }
    
    for photo in photo {
        var count = 0
        for name in photo {
            if dic.keys.contains(name) {
                count += dic[name]!
            }
        }
        result.append(count)
    }
    return result
}
