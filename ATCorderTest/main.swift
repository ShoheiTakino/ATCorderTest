import Foundation

func aaa() {
    var (A, B, D) = readThreeInts()
    var list: [String] = []
    while A <= B {
        list.append(String(A))
        A += D
    }
    print(list.joined(separator: " "))
}

aaa()

func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1], c: ints[2])
}

/*
 input 頭のスペースに注意
80 94
 */

