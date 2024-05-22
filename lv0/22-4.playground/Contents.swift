import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    var arr = arr
    delete_list.map { del in arr = arr.filter { $0 != del } }
    return arr
}
