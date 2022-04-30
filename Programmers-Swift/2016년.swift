import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let component = DateComponents(calendar: .init(identifier: .gregorian), year: 2016, month: a, day: b)
    let day = Calendar.current.component(.weekday, from: component.date!) - 1
    return Calendar.current.shortWeekdaySymbols[day].uppercased()
}