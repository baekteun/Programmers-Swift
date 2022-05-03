import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var sizes = sizes.map { $0.sorted() }
    var wMax = sizes.map { $0[0] }.max()!
    var hMax = sizes.map { $0[1] }.max()!
    return wMax * hMax
}