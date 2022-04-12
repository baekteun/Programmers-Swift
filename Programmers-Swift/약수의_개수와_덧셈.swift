import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    return (left...right).map { divisorCount($0) % 2 == 0 ? $0 : -$0 }.reduce(0, +)
}

func divisorCount(_ n: Int) -> Int {
    var count = 0
    for i in 1...n where i * i <= n {
        if i*i == n { count += 1 }
        else if n%i == 0 { count += 2}
    }
    return count
}