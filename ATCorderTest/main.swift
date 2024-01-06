import Foundation

func aaa() {
    let (N, Q) = readTwoInts()
    // player管理用の[event,x]を生成する2次元の文字列配列を生成する
    var player: [[Int]] = []
    for i in 1...N {
        player.append([0,i])
    }

    for _ in 0..<Q {
        let (event, x) = readTwoInts() // eventがカード等、xが人
        if event == 3 {
            // xの現在の累積カードの状況を確認して、2以上であればYesをそれ以外はNoを出力する
            let card = player.filter { $0[1] == x }.map { $0[0] }.compactMap { Int($0) }.first
            print(card! > 1 ? "Yes" : "No")
        } else {
            for i in 0..<player.count {
                // xが同じ配列に対して、eventで与えられたカードを累積していく
                if player[i][1] == x {
                    player[i][0] += event
                }
            }
        }
    }
}

aaa()

// テンプレート

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}


// 標準入力

/*
 input
 3 9
 3 1
 3 2
 1 2
 2 1
 3 1
 3 2
 1 2
 3 2
 3 3
 */
