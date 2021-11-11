//
//  로또의_최고_순위와_최저_순위.swift
//  Programmers-Swift
//
//  Created by baegteun on 2021/11/11.
//

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    return [7-lottos.filter{win_nums.contains($0) || $0 == 0}.count, 7-lottos.filter(win_nums.contains).count].map { $0 > 6 ? 6 : $0 }
}
