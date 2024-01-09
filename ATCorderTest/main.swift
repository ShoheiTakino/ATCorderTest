import Foundation

func aaa() {
    let (H, W) = readTwoInts()
    var answerList: [Int] = (0..<W).map { _ in 0 }
    let stringList: [String] = (0..<H).map { _ in readLine()! }
    for i in 0..<H {
        let stringI = Array(stringList[i])
        for j in 0..<stringI.count {
            if stringI[j] == "#" && answerList.indices.contains(j) {
                answerList[j] += 1
            }
        }
    }
    print(answerList.map { String($0) }.joined(separator: " "))
}

aaa()


// テンプレ

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}


/*
 input 頭のスペースに注意
3 4
#..#
.#.#
.#.# 
 */
