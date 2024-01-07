import Foundation

func aaa() {
    let _ = readInt()
    var intList = readInts()
    for i in 0..<intList.count {
        if i == 0 { continue }
        let sum = intList[0..<i].reduce(0, +)
        let diffInt = intList[i] - sum
        intList[i] = diffInt
    }
    print(intList.map { String($0) }.joined(separator: " "))
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

// 標準入力

/*
 input 頭のスペースに注意
3
3 4 8
 */
