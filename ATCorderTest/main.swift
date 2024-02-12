import Foundation

func aaa() {
    var N = readInt()
    if N >= 42 { N += 1 }
    print("ACG" + String(format: "%03d", N))
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}


/*
 input 頭のスペースに注意
42
 */

