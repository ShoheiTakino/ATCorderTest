import Foundation

func aaa()  {
    let N = readInt()
    let AList = readInts()
    let setAList = Set(AList)
    let BList = readInts()
    var aAnswer = 0
    var bAnswer = 0
    for i in 0..<AList.count {

        if AList[i] == BList[i] {
            aAnswer += 1
            continue
        }

        if setAList.contains(BList[i]) {
            bAnswer += 1
        }
    }

    print(aAnswer, separator: "\n")
    print(bAnswer)
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
4
1 3 5 2
2 3 1 4
 */

