import Foundation

func aaa()  {
    var S = readStrings()
    var isUppercase = false
    var isDownecase = false
    let isConflicted = Set(S).count == S.count

    if !isConflicted {
        print("No")
        return
    }

    for i in 0..<S.count {
        if Character(S[i]).isUppercase {
            isUppercase = true
        } else {
            isDownecase = true
        }
    }

    print(isDownecase == isUppercase ? "Yes" : "No")
}

aaa()

func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}

/*
 input 頭のスペースに注意
AtCoder
 */

