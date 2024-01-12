import Foundation

func aaa() {
    let inputArray = readLine()!.split(separator: " ").map { Int($0)! }
    let l1 = inputArray[0]
    let r1 = inputArray[1]
    let l2 = inputArray[2]
    let r2 = inputArray[3]
    print(max(0, min(r1, r2) - max(l1, l2))) // これでも良い
}


aaa()

// テンプレ

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}


/*
 input 頭のスペースに注意
 0 3 1 5
 */
