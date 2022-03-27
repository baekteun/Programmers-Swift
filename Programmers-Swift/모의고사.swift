import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let first = [1,2,3,4,5]
    let second = [2,1,2,3,2,4,2,5]
    let third = [3,3,1,1,2,2,4,4,5,5]
    var (res1, res2, res3) = (0,0,0)
    answers.enumerated().forEach { index, item in
        if first[index%first.count] == item { res1 += 1}
        if second[index%second.count] == item { res2 += 1}
        if third[index%third.count] == item { res3 += 1}
    }
    let max = [res1, res2, res3].max() ?? 0
    return [res1, res2, res3].enumerated().filter { index, item in item == max }.map { $0.offset + 1 }
}