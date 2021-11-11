//
//  완주하지_못한_선수.swift
//  Programmers-Swift
//
//  Created by baegteun on 2021/11/11.
//

import Foundation

print(solution(participant: ["leo", "kiki", "eden"], completion: ["eden", "kiki"]))
print(solution(participant: ["marina", "josipa", "nikola", "vinko", "filipa"], completion: ["josipa", "filipa", "marina", "nikola"]))
print(solution(participant: ["mislav", "stanko", "mislav", "ana"], completion: ["stanko", "ana", "mislav"]))

func solution(participant: [String], completion: [String]) -> String{
    var dict: [String:Int] = [:]
    for p in participant{
        if let _ = dict[p] {
            dict[p] = dict[p]! + 1
        }else{
            dict[p] = 1
        }
    }
    
    for c in completion{
        dict[c] = dict[c]! - 1
    }
    
    let ordered = dict.sorted(by: {$0.value < $1.value })
    
    return ordered.last!.key
}
