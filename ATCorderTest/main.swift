import Foundation

func aaa() {
    let (L, R) = readTwoInts()
    let str = "atcoder"
    let l = str.index(str.startIndex, offsetBy: L - 1)
    let r = str.index(str.startIndex, offsetBy: R - 1)
    print(str[l...r])
}


aaa()

// テンプレ

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

/*
 input 頭のスペースに注意
3 6
 */
