import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return absolutes.enumerated().map { index, item in signs[index] ? item : -item }.reduce(0, +)
}