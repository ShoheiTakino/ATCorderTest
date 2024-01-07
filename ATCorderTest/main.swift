import Foundation

func aaa() {
    let _ = readInt()
    var answerList = readInts()
    let Q = readInt()
    let queryList = (0..<Q).map { _ in readInts() }
    for query in queryList {
        // 配列内の指定の数字を置換する処理を追加
        if query[0] == 1 {
            answerList[query[1] - 1] = query[2]
            // query 2の場合は出力のため出力だけして終了
        } else if query[0] == 2 {
            print(answerList[query[1] - 1])
        }
    }
}

aaa()


func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

// 標準入力

/*
 input 頭のスペースに注意
 3
 1 3 5
 7
 2 2
 2 3
 1 3 0
 2 3
 1 2 8
 2 2
 2 1
 */
