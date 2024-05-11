import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    
    var students:[Student] = []
    
    (0..<rank.count).map { students.append(Student(index: $0, rank: rank[$0], attendance: attendance[$0])) }
    
    let sortStudents = students.sorted(by: {$0.rank < $1.rank}).filter { $0.attendance == true }
    
    let (a, b, c) = (sortStudents[0].index, sortStudents[1].index, sortStudents[2].index)
    
    return 10000*a + 100*b + c
}

struct Student {
    let index: Int
    let rank: Int
    let attendance: Bool
    
    init(index: Int, rank: Int, attendance: Bool) {
        self.index = index
        self.rank = rank
        self.attendance = attendance
    }
}

print(solution([6, 1, 5, 2, 3, 4], [true, false, true, false, false, true]))
