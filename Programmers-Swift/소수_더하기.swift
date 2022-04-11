import Foundation

func solution(_ nums:[Int]) -> Int {
    var prime = [Bool]()
    eratos(&prime)
    var sums: [Int] = []
    
    for i in 0..<nums.count-1 {
        for k in i+1..<nums.count {
            for m in k+1..<nums.count {
                sums.append(nums[i] + nums[k] + nums[m])
            }
        }
    }
    return sums.filter { prime[$0] }.count
}

func eratos(_ arr: inout [Bool]) {
    let count = 3000
    arr = Array(repeating: true, count: count+1)
    
    for i in 2...Int(sqrt(Double(count))) {
        for k in 2...count/i {
            arr[i*k] = false
        }
    }
}
