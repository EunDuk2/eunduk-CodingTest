func solution(_ a:String, _ b:String) -> String {
    var a = a, b = b
    var answer = ""
    var temp = 0
    while !a.isEmpty || !b.isEmpty {
        //마지막 자리를 정수로 변환해 더한다
        if !a.isEmpty {
            temp += Int(String(a.last!))!
            a.removeLast()
        }
        if !b.isEmpty {
            temp += Int(String(b.last!))!
            b.removeLast()
        }
        //더한 값이 10을 넘길 수 있기 때문에 10의 나머지만 정수로 변환하고
        answer = String(temp % 10) + answer
        //남은 수는 다음 자리수를 계산할 때 같이 계산한다.
        temp /= 10
    }
    if temp != 0 {
        answer = String(temp) + answer
    }
    return answer
    
}
