import Foundation

func solution(_ n:Int) -> Int {
    for i in 2...n {
        if n % i == 1 { return i }
    }
    return 0
}