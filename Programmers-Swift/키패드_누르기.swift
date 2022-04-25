import Foundation

enum HandType: String {
    case left
    case right
}

func solution(_ numbers:[Int], _ hand:String) -> String {
    let position = [ // 0 = 11
        "*": (0,0),
        "11": (0,1),
        "#": (0,2),
        "7": (1,0),
        "8": (1,1),
        "9": (1,2),
        "4": (2,0),
        "5": (2,1),
        "6": (2,2),
        "1": (3,0),
        "2": (3,1),
        "3": (3,2)
    ]
    var res = [String]()
    var leftPosition = "*"
    var rightPosition = "#"
    numbers.forEach { number in
        var put = HandType.left
        switch number {
        case 1, 4, 7:
            put = .left
            leftPosition = "\(number)"
        case 3, 6, 9:
            put = .right
            rightPosition = "\(number)"
        default:
            let number = number == 0 ? 11 : number
            let cLeft = position[leftPosition]!
            let cRight = position[rightPosition]!
            let numberPosition = position["\(number)"]!
            let leftDist = abs(cLeft.0 - numberPosition.0) + abs(cLeft.1 - numberPosition.1)
            let rightDist = abs(cRight.0 - numberPosition.0) + abs(cRight.1 - numberPosition.1)
            if leftDist > rightDist {
                put = .right
                rightPosition = "\(number)"
            } else if leftDist < rightDist {
                put = .left
                leftPosition = "\(number)"
            } else {
                put = HandType.init(rawValue: hand)! == .left ? .left : .right
                if put == .left {
                    leftPosition = "\(number)"
                } else {
                    rightPosition = "\(number)"
                }
            }
        }
        res.append(put == .left ? "L" : "R")
    }
    
    return res.joined(separator: "")
}
