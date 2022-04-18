import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    var basket = [Int]()
    var res = 0
    moves.forEach { item in
        let item = item - 1
        for i in board.indices {
            guard board[i][item] != 0 else { continue }
            if let last = basket.last {
                if board[i][item] == last {
                    basket.removeLast()
                    res += 2
                } else {
                    basket.append(board[i][item])
                }
            } else {
                basket.append(board[i][item])
            }
            board[i][item] = 0
            break
        }
    }
    return res
}