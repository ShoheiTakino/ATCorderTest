import Foundation

func aaa() {
    let K = readInt()
    var intList: [[Int]] = []
    var answerIntList: [[Int:Int]] = []
    for _ in 0..<K {
        let _ = readInt()
        intList.append(readInts())
    }
    let X = readInt()
    var minimum = 38
    for i in 0..<K {
        if intList[i].contains(X) {
            answerIntList.append([i + 1: intList[i].count]) // [i:j] i:何番目か,j:何個かけたか
            minimum = min(minimum, intList[i].count)
        }
    }
    
    // 当たった人が誰もいない場合
    if answerIntList.isEmpty {
        print(0)
        return
    }

    var aa : [String] = []
    for element in answerIntList {
        for (key, value) in element {
            if value != minimum { continue }
            aa.append("\(key)")
        }
    }
    print(aa.count)
    print(aa.joined(separator: " "))
}

aaa()


func readInt() -> Int {
    return Int(readLine()!)!
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
4
3
7 19 20
4
4 19 24 0
2
26 10
3
19 31 24
19
 */

