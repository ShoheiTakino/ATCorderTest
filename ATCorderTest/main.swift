import Foundation

func aaa() {
    let S = readStrings()
    print(Int(S[0])! * Int(S[2])!)
}

aaa()

func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}

/*
 input 頭のスペースに注意
3x7
 */

