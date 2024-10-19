func solution(_ arr:[Int]) -> [Int] {
    let minValue = arr.min()
    let arr = arr.filter { $0 != minValue }
    return arr.isEmpty ? [-1] : arr
}

print(solution([4,3,2,1]))
