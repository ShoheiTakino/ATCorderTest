import Foundation

func aaa() {
    let (N, M) = readTwoInts()
    var cList = readStringListWithSpace()
    var dList = readStringListWithSpace()
    var pList = readInts()
    var answer = 0
    for i in 0..<N {
        var price = pList[0]
        for j in 1...M {
            if cList[i] == dList[j - 1] {
                price = pList[j]
            }
        }
        answer += price
    }
    print(answer)
}

aaa()

// テンプレ

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

func readStringListWithSpace() -> [String] {
    return readLine()!.split(separator: " ").map { String($0) }
}



/*
 input 頭のスペースに注意
3 2
red green blue
blue red
800 1600 2800
 */
