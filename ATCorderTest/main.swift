import Foundation

func aaa() {
    let Y = readInt()
    if Y % 4 == 2 {
        print(Y)
    } else if Y % 4 == 1 {
        print(Y + 1)
    } else if Y % 4 == 0 {
        print(Y + 2)
    } else if Y % 4 == 3 {
        print(Y + 3)
    }
}


aaa()

// テンプレ

func readInt() -> Int {
    return Int(readLine()!)!
}


/*
 input 頭のスペースに注意

 */
