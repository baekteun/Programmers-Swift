import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget
    return d.sorted().filter {
        budget -= $0
        return budget >= 0
    }.count
}
