import Foundation

func aaa() {
    let (H, W) = readTwoInts()
    let listInList = (0..<H).map { _ in readStrings() }
    var firstIndex: [Int] = []
    var secondIndex: [Int] = []

    for i in 0..<H {
        let iList = listInList[i]
        for _ in 0..<W {
            if let index = iList.lastIndex(of: "o") {
                if firstIndex.isEmpty {
                    firstIndex = [i, index]

                    let filtered = iList.filter { $0 == "-" }
                    print(filtered, "aa白木")
                    break
                }

                if secondIndex.isEmpty {
                    secondIndex = [i, index]
                    break
                }
            }
        }
    }

    let raw = abs(secondIndex[0] - firstIndex[0])
    let line = abs(firstIndex[1] - secondIndex[1])
    print(raw + line)
}

aaa()

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}


/*
 input 頭のスペースに注意
2 3
--o
o--
 */

