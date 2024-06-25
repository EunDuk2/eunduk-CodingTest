import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var result = ""
    var temp = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"].filter { !skip.contains($0) }
    let count = temp.count
    var alphabet = temp.enumerated()
    
    for chr in s {
        let i = alphabet.filter { $0.element == String(chr) }.first?.offset
        let j = (i!+index) >= count ? (i!+index) % count : (i!+index)
        let value = alphabet.filter { $0.offset == j }.first?.element ?? ""
        result.append(value)
    }
    
    return result
}

print(solution( "z", "bcdefghijk", 20))
