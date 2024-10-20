// string값 -> 대문자, 소문자 변환하는 법

func solution(_ s:String) -> String {
    var s = s.map { String($0) }
    var index = 0
    
    for i in 0..<s.count {
        if s[i] == " " {
            index = 0
        } else {
            if index.isMultiple(of: 2) {
                s[i] = s[i].uppercased()
            } else {
                s[i] = s[i].lowercased()
            }
            index += 1
        }
    }
    
    return s.joined()
}
