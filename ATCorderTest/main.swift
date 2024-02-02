import Foundation

func aaa() {
    let n = readInt()
    let power = Double(pow(Double(2), Double(n)))
    print(power > Double(n * n) ? "Yes" : "No")
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
5
 */

