import Foundation

func solution(_ myString:String) -> String {
    var myString = myString.map { String($0) }
    
    for i in 0..<myString.count {
        if myString[i] < "l" {
            myString[i] = "l"
        }
    }
    return myString.joined()
}
