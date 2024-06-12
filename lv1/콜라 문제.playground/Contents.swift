import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result = 0
    var n = n
    
    while(n >= a) {
        result += ((n / a) * b)
        let temp = n % a
        n = ((n / a) * b) + temp
    }
    return result
}

print(solution(2, 1, 20))
