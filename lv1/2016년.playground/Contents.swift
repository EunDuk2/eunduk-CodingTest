// 원하는 날짜까지 모든 일 수를 구하고
// 7로 나눈 나머지 값으로 요일을 구한다.

func solution(_ a:Int, _ b:Int) -> String {
    let week:[String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    let monthDay = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    var totalDay = b
    
    (0..<a-1).map {
        totalDay += monthDay[$0]
    }
    
    return week[totalDay % 7]
}

print(solution(5, 24))
