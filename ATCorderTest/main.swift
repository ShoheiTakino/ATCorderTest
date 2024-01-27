import Foundation

func aaa() {
    let list = readStrings()
    for i in 0..<list.count {
        if i == 0 {
            if Character(list[i]).isUppercase { continue }
            print("No")
            return
        } else if !Character(list[i]).isUppercase { continue }
        print("No")
        return
    }
    print("Yes")
}

aaa()

func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}

/*
 input 頭のスペースに注意
Capitalized
 */

