import Foundation

func aaa() {
    let t = readInt()
    print(a(a(a(t) + t) + a(a(t))))
}

private func a(_ t: Int) -> Int {
    t * t + 2 * t + 3
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
0
 */

