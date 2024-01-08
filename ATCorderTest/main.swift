import Foundation

func aaa() {
    let answer = String(format: "%X", (readInt()))
    print(answer.count == 2 ? answer : "0" + answer)
}

aaa()


// テンプレ

func readInt() -> Int {
    return Int(readLine()!)!
}


/*
 input 頭のスペースに注意
99
 */
