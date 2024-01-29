import Foundation

func aaa() {
    let _ = readInt()
    print(readLine()!.last!)
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
5
abcde
 */

