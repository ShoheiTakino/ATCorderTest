import Foundation

func aaa() {
    var N = readInt()

    while !is326Like(N) {
        N += 1
    }
    print(N)
}

func is326Like(_ int: Int) -> Bool {
    let a = int / 100
    let b = int / 10 % 10
    let c = int % 10
    print(a, b, c)
    return a * b == c
}

aaa()

// テンプレ

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
326
 */
