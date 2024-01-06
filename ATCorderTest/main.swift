import Foundation

func aaa() {
    let (N, K) = readTwoInts()
    let SList: [String] = (0..<N).map { _ in getLastThreeCharacters(readLine()!) }
    let TList: [String] = (0..<K).map { _ in readLine()! }
    var answer = 0
    for s in SList {
        for t in TList {
            if s == t {
                answer += 1
                break
            }
        }
    }
    print(answer)
}

// こちらの方が処理速度は遅い
//func aaa() {
//    let (N, K) = readTwoInts()
//    let SList: [String] = (0..<N).map { _ in getLastThreeCharacters(readLine()!) }
//    let TList: [String] = (0..<K).map { _ in readLine()! }
//
//    let answer = SList.reduce(0) { result, upper in
//        return result + (TList.contains { lower in upper.contains(lower) } ? 1 : 0)
//    }
//
//    print(answer)
//}

aaa()

// テンプレート

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func getLastThreeCharacters(_ str: String) -> String {
    let startIndex = str.index(str.endIndex, offsetBy: -3)
    let lastThreeCharacters = str[startIndex...]
    return String(lastThreeCharacters)
}

// 標準入力

/*
 input 頭のスペースに注意
3 3
142857
004159
071028
159
287
857
 */
