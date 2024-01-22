import Foundation

func aaa() {
    let (H, W) = readTwoInts()
    let (R, C) = readTwoInts()
    var answer = 0
    if C != 1 { answer += 1 }
    if C != W { answer += 1 }
    if R != 1 { answer += 1 }
    if R != H { answer += 1 }
    print(answer)
}

aaa()

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

/*
 input 頭のスペースに注意
3 4
1 3
 */

