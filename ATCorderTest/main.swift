import Foundation

func aaa() {
    let N = readInt()
    var intList: [Int] = []

    for i in 0..<N + 1 {
        if i == 0 {
            intList.append(1)
            continue
        } else if i == 1 {
            intList.append(1)
            continue
        }
        intList.append(i)
    }

    print(intList.reduce(1, *))
}

aaa()


// テンプレ

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
2
 */
