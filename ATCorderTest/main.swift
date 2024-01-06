import Foundation

func aaa() {
    let _ = readInt()
    let answer = readLine()!
    print(replaceNaan(answer))
}

aaa()

// テンプレート

func readInt() -> Int {
    return Int(readLine()!)!
}

func replaceNaan(_ input: String) -> String {
    // "na"が含まれている場合、それを"nya"に置換する
    let modifiedString = input.replacingOccurrences(of: "na", with: "nya")
    return modifiedString
}

// 標準入力

/*
 input 頭のスペースに注意
4
naan
 */
