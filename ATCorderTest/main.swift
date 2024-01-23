import Foundation

func aaa() {
    print("0" + readInts().dropLast().map { String($0) }.joined(separator: ""))
}

aaa()

func readInts() -> [Int] {
    return readLine()!.split(separator: "").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
1011
 */

