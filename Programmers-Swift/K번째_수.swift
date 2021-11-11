//
//  K번째_수.swift
//  Programmers-Swift
//
//  Created by baegteun on 2021/11/11.
//

import Foundation

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))


func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var arrays: [Int] = []
    for i in 0..<commands.count{
        var arr: [Int] = Array<Int>(array[commands[i][0]-1...commands[i][1]-1])
        arr.sort()
        arrays.append(arr[commands[i][2]-1])
    }
    return arrays
}
