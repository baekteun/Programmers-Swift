import Foundation

func solution(_ n:Int) -> Int {
    let toBin = String(n, radix: 3)
    let rev = String(toBin.reversed().map { $0 })
    return Int(rev, radix: 3)!
}