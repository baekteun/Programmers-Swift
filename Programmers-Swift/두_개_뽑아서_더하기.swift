import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var res: [Int] = []
    for i in numbers.indices {
        for k in i..<numbers.count where i != k {
            res.append(numbers[i] + numbers[k])
        }
    }
    return Set(res).sorted()
}