import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let count = p.count
    var result = 0
    
    for i in 0...t.count-count {
        let subInt = Int(t[t.index(t.startIndex, offsetBy: i)..<t.index(t.startIndex, offsetBy: i+count)])!
        if subInt <= Int(p)! {
            result += 1
        }
    }
    return result
}
