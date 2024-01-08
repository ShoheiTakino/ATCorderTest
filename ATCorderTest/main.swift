import Foundation

func aaa() {
    let (A, B) = readTwoInts()
    var answerList: [Int] = []
    if A == 0 && B == 0 {
        print(0)
        return
    }

    answerList = getTargetList(A)
    answerList += getTargetList(B)
    print(Array(Set(answerList)).reduce(0, +))
}

aaa()


// テンプレ

func getTargetList(_ int: Int) -> [Int] {
    if int == 3 {
        return [1, 2]
    } else if int == 5 {
        return [1, 4]
    } else if int == 6 {
        return [2, 4]
    }

    return [int]
}

func readInt() -> Int {
    return Int(readLine()!)!
}

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}


/*
 input 頭のスペースに注意
1 2
 */
