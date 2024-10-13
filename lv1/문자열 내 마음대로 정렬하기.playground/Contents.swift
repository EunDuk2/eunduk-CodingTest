func solution(_ strings:[String], _ n:Int) -> [String] {
    var strings = strings
    
    strings.sort(by: {
        let firstIndex = $0.index($0.startIndex, offsetBy: n)
        let secondIndex = $1.index($0.startIndex, offsetBy: n)
        
        if $0[firstIndex] == $1[secondIndex] {
            return $0 < $1
        } else {
            return $0[firstIndex] < $1[secondIndex]
        }
    })
    
    return strings
}

print(solution(["sun", "bed", "car"], 1))
