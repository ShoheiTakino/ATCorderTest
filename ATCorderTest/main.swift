import Foundation

func aaa() {
    let SList = readStrings().sorted()
    if SList[0] != SList[1] {
        print(SList[0])
        return
    } else if SList[2] != SList[1] {
        print(SList[2])
        return
    } else {
        print(-1)
    }
}

aaa()

// テンプレ
func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}

/*
 input 頭のスペースに注意
pop
 */
