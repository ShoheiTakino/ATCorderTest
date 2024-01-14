import Foundation

func aaa()  {
    let N = readInt()
    let o = (0..<N).map { _ in "o" }.joined()
    print("L\(o)ng")
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
5
2 2 3 1 1
 */

