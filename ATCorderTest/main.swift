import Foundation

func aaa() {
    let intList = readInts()
    let answer = (intList[0] + intList[1]) * (intList[2] - intList[3])
    print("\(answer)\nTakahashi")
}

aaa()


// テンプレ

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}


/*
 input 頭のスペースに注意
1 2 5 3
 */
