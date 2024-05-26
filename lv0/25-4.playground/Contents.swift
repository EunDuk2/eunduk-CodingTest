import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
    var result = 0
    
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if i+j <= k {
                result += board[i][j]
            }
        }
    }
    return result
}

print(solution([[0, 1, 2],[1, 2, 3],[2, 3, 4],[3, 4, 5]], 2))
