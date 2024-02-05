import Foundation

func aaa() {
    var S = readStrings()
    let (a, b) = readTwoInts()
    S.swapAt(a - 1, b - 1)
    print(S.joined(separator: ""))
}

aaa()

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}


/*
 input 頭のスペースに注意
chokudai
3 5
 */

