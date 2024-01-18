import Foundation

func aaa() {
    var intList = readInts()
    let median = intList[1]
    if intList.count != Set(intList).count {
        print("Yes")
        return
    }
    intList.sort()
    let medianIndex = intList.firstIndex(of: median)
    print(medianIndex == 1 ? "Yes" : "No")
}

aaa()


func readInt() -> Int {
    return Int(readLine()!)!
}

func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1], c: ints[2])
}


func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}


/*
 input 頭のスペースに注意
5 3 2
 */

