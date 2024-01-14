import Foundation

func aaa()  {
    var (A, B, K) = readThreeInts()
    var count = 0
    while B > A {
        count += 1
        A = A * K
    }
    print(count)
}

aaa()

func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1], c: ints[2])
}

/*
 input 頭のスペースに注意
1 4 2
 */

