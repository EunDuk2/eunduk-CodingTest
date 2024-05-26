import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var arr = arr
    let length: Int = arr.count > arr[0].count ? arr.count : arr[0].count
    
    if arr.count == length {
        for i in 0..<arr.count {
            (0..<length-arr[i].count).map {_ in arr[i].append(0) }
        }
    } else {
        (0..<length-arr.count).map {_ in arr.append(Array(repeating: 0, count: arr[0].count)) }
    }
    return arr
}
