import Foundation

func solution(_ order:[String]) -> Int {
    var result = 0
    
    for order in order {
        switch order {
        case "iceamericano", "americanoice", "americano", "anything":
            result += 4500
        case "hotamericano", "americanohot":
            result += 4500
        case "icecafelatte", "cafelatteice", "cafelatte":
            result += 5000
        case "hotcafelatte", "cafelattehot":
            result += 5000
        default:
            break
        }
    }
    return result
}
