import Foundation

func aaa() {
    let (H, W) = readTwoInts()
    let intList = (0..<H).map { _ in readInts() }
    var answerList : [[Int]] = []
    for i in 0..<W {
        var iList: [Int] = []
        for j in 0..<H {
            iList.append(intList[j][i])
        }
        answerList.append(iList)
    }
    for list in answerList {
        print(list.map { String($0) }.joined(separator: " "))
    }
}

aaa()

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}


/*
 input 頭のスペースに注意
4 3
1 2 3
4 5 6
7 8 9
10 11 12
 */

