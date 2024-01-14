import Foundation

func aaa()  {
    let N = readInt()
    let binaryString = String(N, radix: 2)
    let list = binaryString.split(separator: "").map { Int(String($0))! }.reversed()
    var count = 0
    for item in list {
        if item == 0 {
            count += 1
        } else if item != 0 {
            break
        }
    }
    print(count)
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
5
2 2 3 1 1
 */

