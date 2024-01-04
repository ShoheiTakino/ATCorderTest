import Foundation

func aaa() {
    let (H, _) = readTwoInts()
    let stringList: [String] = (0..<H).map { _ in readLine()! }
    let answer = stringList.flatMap { $0.map { $0 == "#" ? 1 : 0 } }.reduce(0, +)
//    var answer = 0
//    for i in 0..<stringList.count {
//        for j in 0..<W {
//            if Array(stringList[i])[j] != "#" { continue }
//            answer += 1
//        }
//    }
    print(answer)
}

aaa()

// テンプレート

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}


// 標準入力

/*
 input
 3 5
 #....
 .....
 .##..
 */
