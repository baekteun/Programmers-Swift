import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
  var res = Array(repeating: 1, count: n)
  lost.forEach { item in
    res[item-1] -= 1
  }
  reserve.forEach { item in
    res [item-1] += 1
  }
  res.enumerated().forEach { item in
    if item.element == 0 {
      if item.offset - 1 >= 0 {
        if res[item.offset-1] >= 2 {
          res[item.offset-1] -= 1
          res[item.offset] += 1
        }
      } 
      if item.offset + 1 < res.count, res[item.offset] == 0 {
        if res[item.offset+1] >= 2 {
          res[item.offset+1] -= 1
          res[item.offset] += 1
        }
      }
    }
  }
  return res.filter { $0 >= 1 }.count
}
