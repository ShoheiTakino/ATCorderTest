import Foundation

func aaa()  {
    let K = readInt()
    let list = (0..<K).map { _ in readStrings() }
    for i in 0..<list.count {
        for j in 1...list[i].count {
            if i == j - 1 || list[i][j - 1] == list[j - 1][i] && list[i][j - 1] == "D" { continue }
            if list[i][j - 1] == "W" && list[j - 1][i] == "L" { continue }
            if list[i][j - 1] == "L" && list[j - 1][i] == "W" { continue }
            print("incorrect")
            return
        }
    }
    print("correct")
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}

/*
 input 頭のスペースに注意
3
 */
