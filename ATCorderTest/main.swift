import Foundation

func aaa() {
    var Q = readInt()
    var list = (0..<Q).map { _ in readInts() }
    var answer: [Int] = []
    for i in 0..<list.count {
        let i = list[i]
        if i[0] == 1 {
            answer.append(i[1])
        } else if i[0] == 2 {
            answer.reverse()
            print(answer[i[1] - 1])
            answer.reverse()
        }
    }
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
5
1 20
1 30
2 1
1 40
2 3
 */

