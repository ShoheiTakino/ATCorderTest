import Foundation

func aaa() {
    print(Array(Set(readInts())).count)
}

aaa()

// テンプレ

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
31 9 24 31 24
 */
