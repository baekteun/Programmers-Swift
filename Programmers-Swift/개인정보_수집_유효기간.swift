import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let today = today.toDate()
    let termDict = terms.reduce(into: [String:Int]()) { dict, term in
        let input = term.components(separatedBy: " ")
        let plan = input[0]
        let month = Int(input[1])!
        dict[plan] = month
    }
    
    return privacies.enumerated()
        .filter {
            let input = $0.element.components(separatedBy: " ")
            let date = input[0].toDate()
            let plan = input[1]
            let addedDate = Calendar(identifier: .iso8601).date(byAdding: .month, value: termDict[plan]!, to: date)!
            return today.compare(addedDate) == .orderedDescending || today.compare(addedDate) == .orderedSame
        }
        .map(\.offset)
        .map { $0 + 1 }
}

extension String {
    func toDate() -> Date{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.MM.dd"
        return formatter.date(from: self) ?? .init()
    }
}