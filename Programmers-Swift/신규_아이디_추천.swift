//
//  신규_아이디_추천.swift
//  Programmers-Swift
//
//  Created by baegteun on 2021/11/12.
//

import Foundation
func solution(_ new_id:String) -> String {
    var s = new_id.lowercased().filter{  $0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }.map{String($0)}.joined()
    while s.contains(".."){s = s.replacingOccurrences(of: "..", with: ".")}
    if let a = s.first, a == "."{s.removeFirst()};
    if let a = s.last, a == "."{s.removeLast()}
    if s.isEmpty{ s = "a" }
    if s.count>=16 {
        s = String(s.prefix(15))
        if s.last! == "."{
            s.removeLast()
        }
    }
    while s.count < 3{s += String(s.last!)}
    
    
    return s
}
