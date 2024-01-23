import Foundation

func aaa() {
    let S = readInts().sorted()
    for i in 0..<9 {
        if S[i] == i { continue }
        print(i)
        return
    }
    print(9)
}

aaa()

func readInts() -> [Int] {
    return readLine()!.split(separator: "").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
012345678
 */

