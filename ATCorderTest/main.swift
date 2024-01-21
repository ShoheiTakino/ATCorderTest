import Foundation

func aaa() {
    let N = readInt()
    var aoki = 0
    var takahashi = 0
    for _ in 0..<N {
        let iScore = readInts()
        takahashi += iScore[0]
        aoki += iScore[1]
    }

    if takahashi == aoki {
        print("Draw")
        return
    } else if takahashi > aoki {
        print("Takahashi")
        return
    } else if takahashi < aoki {
        print("Aoki")
        return
    }
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
97
 */

