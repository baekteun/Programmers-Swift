//
//  가장_큰_수.swift
//  Programmers-Swift
//
//  Created by baegteun on 2021/11/11.
//

func solution(_ numbers:[Int]) -> String {
    let arr  = numbers.sorted { o1, o2 in
        Int("\(o1)"+"\(o2)")! > Int("\(o2)"+"\(o1)")!
    }
    if arr[0] == 0{ return "0" }
    return arr.reduce("") {"\($0)\($1)"}
}
