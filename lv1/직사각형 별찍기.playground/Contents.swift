//import Foundation
//
//let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//let (a, b) = (n[0], n[1])
//
//(0..<b).map { _ in
//    (0..<a).map { _ in print("*", terminator: "") }
//    print("")
//}


import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

(0..<b).map { _ in
    print(Array(repeating: "*", count: a).joined())
}
