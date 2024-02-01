import Foundation

func aaa() {
    let H = readInt()
    let a = 12800000
    let answer =  H * (a + H)
    print(sqrt(Double(answer)))
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
333
 */

