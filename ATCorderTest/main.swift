import Foundation

func aaa() {
    let N = readInt()
    let answerList: [String] = (0...N).map { String($0) }.reversed()
    answerList.forEach { print($0) }
}

aaa()

// テンプレート

func readInt() -> Int {
    return Int(readLine()!)!
}

// 標準入力

/*
 input
 22
 */
