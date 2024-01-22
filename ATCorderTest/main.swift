import Foundation

func aaa() {
    let N = readInt()
    let S = readStrings()
    for i in 1..<N {
        var answer = 0
        for j in i...N - 1 {
            if S[j] == S[j - i] { break }
            answer += 1
        }
        print(answer)
    }
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}

/*
 input 頭のスペースに注意
6
abcbac
 */

