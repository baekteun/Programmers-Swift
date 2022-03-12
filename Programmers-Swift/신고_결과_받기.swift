import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reportedDict = [String:Int]()
    var reportingUser = [String:[String]]()
    var res: [Int] = []
    report.forEach { user in
        let split = user.split(separator: " ").map { String($0) }
        let reporter = split[0]
        let reported = split[1]
        if reportingUser[reporter, default: []].contains(reported) {
        } else {
            reportedDict[reported] = reportedDict[reported, default: 0] + 1
            reportingUser[reporter, default: []].append(reported)
        }
    }
    id_list.forEach { user in
        var count = 0
        reportingUser[user, default: []].forEach{ item in
            if reportedDict[item, default: -1] >= k {
                count += 1
            }
        }
        res.append(count)
    }
    return res
}
