import Foundation

func aaa() {
    var (x, y) = readTwoInts()
    if y <= x {
        print(0)
        return
    }
    var answer = 0
    y = y - x
    while 0 < y {
        y -= 10
        answer += 1
    }
    print(answer)
}

aaa()

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

/*
 input 頭のスペースに注意
80 94
 */

