import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var arr = Array(repeating: 0, count: N+1)
    for stage in stages {
        for i in 0..<stage {
            arr[i] += 1
        }
    }
    var res = [Int: Double]()
    for i in 0..<N {
        res[i+1] = Double(arr[i] - arr[i+1]) / Double(arr[i])
    }
    return res.sorted(by: <).sorted { $0.value > $1.value }.map(\.key)
}