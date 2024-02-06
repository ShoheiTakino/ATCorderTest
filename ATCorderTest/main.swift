import Foundation

func aaa() {
    var abcList = readStrings()
    let bca = Int([abcList[1], abcList[2], abcList[0]].joined(separator: ""))!
    let cab = Int([abcList[2], abcList[0], abcList[1]].joined(separator: ""))!
    let abc = Int(abcList.joined(separator: ""))!
    print(abc + bca + cab)
}

aaa()

func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}

/*
 input 頭のスペースに注意
123
 */

