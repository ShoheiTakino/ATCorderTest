import Foundation

func aaa() {
    let S = readInt()
    let a = Double(pow(Double(2), 31))
    if -a <= Double(S) && Double(S) < a {
        print("Yes")
        return
    }
    print("No")
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}


/*
 input 頭のスペースに注意
10
 */

