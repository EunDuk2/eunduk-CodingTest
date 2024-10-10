func solution(_ n:Int, _ m:Int) -> [Int] {
    return [calDivisor(n, m), calMultiple(n, m)]
}

// 최소공배수 구하기 함수
// 1부터 작은수까지 반복문 돌리고, 각 수의 배수를 배열에 담기
// 배열에 같은 수가 있는 즉시 반환
func calMultiple(_ a: Int, _ b: Int) -> Int {
    var aNums:[Int] = []
    var bNums:[Int] = []
    let maxNum = a > b ? a : b
    
    for i in 1...maxNum {
        aNums.append(a * i)
        bNums.append(b * i)
        
        for num in aNums {
            if bNums.contains(num) {
                return num
            }
        }
    }
    
    return 0
}


// 최대 공약수 구하기 함수
// 1부터 n, m중에 더 큰 수로 반복문 돌리고, 둘 다 나눠떨어지는 수 갱신
// 마지막 수 반환
func calDivisor(_ a: Int, _ b: Int) -> Int {
    var divisor = 1
    let maxNum = a > b ? a : b
    
    for i in 2...maxNum {
        if a % i == 0 && b % i == 0 {
            divisor = i
        }
    }
    
    return divisor
}
