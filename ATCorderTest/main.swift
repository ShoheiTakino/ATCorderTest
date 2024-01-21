import Foundation

func aaa() {
    var S = Array(readLine()!)
    let diff = 6 - S.count

    for i in 0..<diff {
        S.append(S[i])
    }

    print(S.map { String($0) }.joined(separator: ""))
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
abc
 */

