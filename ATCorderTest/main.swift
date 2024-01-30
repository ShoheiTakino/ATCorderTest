import Foundation

func aaa() {
    var list = readInts()
    var answer = ""
    var count = 0
    while list[0] >= 0 {
        count += 1
        if count % 3 == 0 {
            list[0] -= list[3]
            answer = "T"
        } else if count % 3 == 1 {
            list[0] -= list[1]
            answer = "F"
        } else if count % 3 == 2 {
            list[0] -= list[2]
            answer = "M"
        }
    }

    print(answer)
}

aaa()

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
25 10 11 12
 */

