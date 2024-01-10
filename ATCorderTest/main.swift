import Foundation

func aaa() {
    let N = readInt()
    var stringList: [String] = []
    for _ in 0..<N {
        stringList.append(readLine()!)
    }

    let arraySet = Array(Set(stringList))
    if arraySet.count != stringList.count {
        print("No")
        return
    }


    for i in 0..<stringList.count {
        let iArray = Array(stringList[i])
        if iArray[0] == "H" || iArray[0] == "D" || iArray[0] == "C" || iArray[0] == "S" {
            if iArray[1] == "A" || iArray[1] == "2" || iArray[1] == "3" || iArray[1] == "4" ||
                iArray[1] == "5" || iArray[1] == "6" || iArray[1] == "7" || iArray[1] == "8" ||
                iArray[1] == "9" || iArray[1] == "T" || iArray[1] == "J" || iArray[1] == "Q" || iArray[1] == "K" {
                continue
            }
        }
        print("No")
        return
    }

    print("Yes")
}


aaa()

// テンプレ
func readInt() -> Int {
    return Int(readLine()!)!
}


/*
 input 頭のスペースに注意
4
H3
DA
D3
SK
 */
