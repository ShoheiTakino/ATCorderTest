import Foundation

func aaa() {
    let S = readLine()!
    let T = readLine()!
    print(isPrefix(S, of: T) ? "Yes" : "No")
}

aaa()

func isPrefix(_ target: String, of string: String) -> Bool {
    string.hasPrefix(target)
}

// テンプレ



/*
 input 頭のスペースに注意
atco
atcoder
 */
