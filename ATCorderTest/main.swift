import Foundation

func aaa() {
    if let x = Int(readLine()!) {
        var ans: Int
        if x >= 0 {
            ans = x / 10
        } else {
            ans = -((-x + 9) / 10)
        }
        print(ans)
    }
}

aaa()



func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
 47
 */

