func solution(_ n:Int) -> String {
    var result = ""
    
    (0..<n).map {
        if $0.isMultiple(of: 2) {
            result.append("수")
        } else {
            result.append("박")
        }
    }
    
    return result
}
