import Foundation

func aaa() {
    let _ = readInt()
    let intList = readInts()
    let max = intList.max()!
    print(intList.firstIndex(of: max)! + 1)
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
 50 80 70
 */
