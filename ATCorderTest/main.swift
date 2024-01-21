import Foundation

func aaa() {
    let S = readLine()!
    let stringArray = Array(S)
    for i in 1..<stringArray.count {
        let str = stringArray[i - 1]
        let iStr = stringArray[i]
        let unicode = UnicodeScalar(String(stringArray[i]))!.value
        if str <= iStr { continue }
        print("No")
        return
    }
    print("Yes")
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
97
 */

