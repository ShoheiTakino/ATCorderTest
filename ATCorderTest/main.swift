import Foundation

func aaa() {
    let _ = readInt()
    print(readInts().reduce(0, +))
}

aaa()


// テンプレ

func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
3
2 7 2

 */
