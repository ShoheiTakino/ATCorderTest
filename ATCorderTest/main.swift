import Foundation

func aaa() {
    let intList = readInts().sorted()
    let int = Array(Set(intList))
    if int.count != 2 {
        print("No")
        return
    }
    let isMatch = intList.filter { $0 == int[0] }
    print(isMatch.count == 2 || isMatch.count == 3 ? "Yes" : "No")
}


aaa()

// テンプレ

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}


/*
 input 頭のスペースに注意
 1 2 1 2 1
 */
