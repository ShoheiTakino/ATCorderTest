import Foundation

func aaa() {
    let N = readInt()
    var answer = ""
    for i in 0..<N {
        answer += "10"
    }
    answer += "1"
    print(answer)
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}


/*
 input 頭のスペースに注意
4
 */

