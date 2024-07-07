import Foundation

func solution(_ babbling:[String]) -> Int {
    var result = 0
    
    for word in babbling {
        var word = word
        word = word.replacingOccurrences(of: "aya", with: "1")
        word = word.replacingOccurrences(of: "ye", with: "2")
        word = word.replacingOccurrences(of: "woo", with: "3")
        word = word.replacingOccurrences(of: "ma", with: "4")
        
        if Int(word) == nil {
            continue
        }
        if !word.contains("11") && !word.contains("22") && !word.contains("33") && !word.contains("44") {
            result += 1
        }
    }
    return result
}

print(solution(["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"]))
