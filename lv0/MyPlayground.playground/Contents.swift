import Foundation

func solution(_ n_str:String) -> String {
    var n_str = n_str
    
    for ch in n_str {
        if ch == "0" {
            n_str.removeFirst()
        } else {
            return n_str
        }
    }
    
    return n_str
}
