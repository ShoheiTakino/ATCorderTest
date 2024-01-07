import Foundation

func aaa() {
    let (_, X) = readTwoInts()
    print(readInts().firstIndex(of: X)! + 1)
}

aaa()

// テンプレ

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

// 標準入力

/*
 input 頭のスペースに注意
4 3
2 3 1 4
 */
