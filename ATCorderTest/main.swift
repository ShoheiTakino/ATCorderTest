import Foundation

func aaa(_ s: String) {
    if s[s.index(s.startIndex, offsetBy: 0)] != s[s.index(s.startIndex, offsetBy: 1)] && s[s.index(s.startIndex, offsetBy: 0)] != s[s.index(s.startIndex, offsetBy: 2)] {
        print(String(s[s.index(s.startIndex, offsetBy: 0)]))
    } else if s[s.index(s.startIndex, offsetBy: 1)] != s[s.index(s.startIndex, offsetBy: 0)] && s[s.index(s.startIndex, offsetBy: 1)] != s[s.index(s.startIndex, offsetBy: 2)] {
        print(String(s[s.index(s.startIndex, offsetBy: 1)]))
    } else if s[s.index(s.startIndex, offsetBy: 2)] != s[s.index(s.startIndex, offsetBy: 0)] && s[s.index(s.startIndex, offsetBy: 2)] != s[s.index(s.startIndex, offsetBy: 1)] {
        print(String(s[s.index(s.startIndex, offsetBy: 2)]))
    } else {
        print("-1")
    }
}

aaa(readLine()!)

// テンプレ
func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}

/*
 input 頭のスペースに注意
pop
 */
