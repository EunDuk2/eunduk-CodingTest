import Foundation

// 기회 구조체 생성
struct Chance {
    let score: Int // 점수
    let bonus: String // 제곱 보너스
    var bonusScore: Int { // 보너스에 따른 제곱근
        if bonus == "S" {
            return 1
        } else if bonus == "D" {
            return 2
        } else {
            return 3
        }
    }
    let option: String? // 스타상, 아차상
}

func solution(_ dartResult:String) -> Int {
    var dartResult = dartResult.map { String($0) }
    var chances: [Chance] = []
    
    // Chance 생성자를 위해 저장
    var score: Int = 0
    var bonus: String = ""
    var option: String?
    
    // dartResult 문자열 배열을 탐색한다.
    for i in 0..<dartResult.count {
        // 먼저 보너스 3개 중 하나일 경우, bonus에 값을 저장한다.
        if dartResult[i] == "S" || dartResult[i] == "D" || dartResult[i] == "T" {
            bonus = dartResult[i]
            // 보너스 다음 문자가 *나 #인 경우 option을 저장한다.
            if (i+1) < dartResult.count && (dartResult[i+1] == "*" || dartResult[i+1] == "#") {
                option = dartResult[i+1]
            }
            // 보너스 조건이 들어오면, score와 option은 이미 저장했기 때문에 생성자를 배열에 추가한다.
            chances.append(Chance(score: score, bonus: bonus, option: option))
            // 생성자로 추가했으니 초기화 수행
            option = nil
            bonus = ""
            score = 0
        } else if dartResult[i] == "*" || dartResult[i] == "#" {
            // continue
        } else if let num = Int(dartResult[i...i+1].joined()) {
            // score가 10인 경우의 조건문
            score = num
        } else if let num = Int(dartResult[i]) {
            // score가 10 아닌 경우의 조건문
            if score != 10 {
                score = num
            }
        }
    }
    // 3번의 기회를 0점으로 선언한다.
    var chanceScore: [Int] = [0, 0, 0]
    
    for i in 0..<chances.count {
        // 기본적인 점수를 계산하여 더한다. pow로 제곱근 계산
        chanceScore[i] = Int(pow(Double(chances[i].score), Double(chances[i].bonusScore)))
        // 나의 옵션으로 점수 추가 계산
        if chances[i].option == "*" {
            chanceScore[i] *= 2
        } else if chances[i].option == "#" {
            chanceScore[i] *= -1
        }
        
        // 앞 기회의 옵션으로 점수 추가 계산
        if i < chances.count-1 {
            if chances[i+1].option == "*" {
                chanceScore[i] *= 2
            }
        }
    }
    
    // 구한 3개의 기회 점수를 합산해서 반환
    return chanceScore.reduce(0,+)
}
