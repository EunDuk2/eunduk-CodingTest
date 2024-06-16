import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    // n 은 벽에 길이
    // m 은 한 번에 칠할 수 있는 길이
    // section 은 칠해야 하는 구역
    
    var section = section
    var result = 0
    
    // sction의 처음으로 와서 m만큼 숫자를 모두 삭제
    // 다시 section 맨 앞으로 돌아와 반복
    while(!section.isEmpty) {
        let first = section.first!
        let last = first+m-1 < n ? first+m-1 : n
        (first...last).map {
            if !section.isEmpty {
                if $0 == section.first! {
                    section.removeFirst()
                }
            }
        }
        result += 1
    }
    
    return result
}

print(solution(8, 4, [2, 3, 6]))
