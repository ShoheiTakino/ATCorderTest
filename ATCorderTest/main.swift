import Foundation

func aaa() {
    let S = readStrings()
    print(S.last!)
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

func readStrings() -> [String] {
    return readLine()!.split(separator: ".").map { String($0) }
}
/*
 input 頭のスペースに注意
3 4 5
 */

