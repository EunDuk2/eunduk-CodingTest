import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var divisors:[Int] = []
    
    (1...number).map {
        if calDivisorCount(num: $0) > limit {
            divisors.append(power)
        } else {
            divisors.append(calDivisorCount(num: $0))
        }
    }
    return divisors.reduce(0, +)
}

func calDivisorCount(num: Int) -> Int {
    var count = 0
    
    for i in 1...Int(sqrt(Double(num))) {
        if num % i == 0 {
            if i * i == num {
                count += 1
            } else {
                count += 2
            }
        }
    }
    return count
}
