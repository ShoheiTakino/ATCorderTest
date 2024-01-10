import Foundation

func aaa() {
    let S = readLine()!
    let letterNum = S.count
    let zero = S.startIndex
    let startCharacterIndex = S.index(zero, offsetBy: letterNum / 2)
    print(S[startCharacterIndex])
}


aaa()

// テンプレ

/*
 input 頭のスペースに注意
atcoder
 */
