import Foundation

func aaa() {
    let S = readLine()!
    var answer = -1
    for i in 0..<Array(S).count {
        if Array(S)[i] != "a" { continue }
        answer = i + 1
    }
    print(answer)
}

aaa()


// 標準入力

/*
 input 頭のスペースに注意
abcdaxayz
 */
