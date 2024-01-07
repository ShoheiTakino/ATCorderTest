import Foundation

func aaa() {
    let (_, K) = readTwoInts()
    var intList = readInts()
    for _ in 0..<K {
        intList.remove(at: 0)
        intList.append(0)
    }
    intList.forEach { print($0, terminator: " ") }
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
3 2
2 7 8
 */
