//
//  숫자_문자열과_영단어.swift
//  Programmers-Swift
//
//  Created by baegteun on 2021/11/12.
//

func solution(_ s:String) -> Int {
    return Int(s.replacingOccurrences(of:"zero", with:"0")
               .replacingOccurrences(of: "one", with: "1")
               .replacingOccurrences(of: "two", with: "2")
               .replacingOccurrences(of: "three", with: "3")
               .replacingOccurrences(of: "four", with:"4")
               .replacingOccurrences(of: "five", with: "5")
               .replacingOccurrences(of: "six", with: "6")
               .replacingOccurrences(of: "seven", with: "7")
               .replacingOccurrences(of: "eight", with: "8")
               .replacingOccurrences(of: "nine", with: "9"))!
}
