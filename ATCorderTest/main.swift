import Foundation

func aaa() {
    let intList = readInts()

    if intList[0] == intList[2] && intList[1] == intList[3] {
        print("Takahashi")
        return
    }

    if intList[0] == intList[2] {
        if intList[1] < intList[3]  {
            print("Takahashi")
            return
        } else if intList[1] > intList[3]  {
            print("Aoki")
            return
        }
    }

    if intList[0] > intList[2] {
        print("Aoki")
        return
    } else if intList[0] < intList[2] {
        print("Takahashi")
        return
    }
}

aaa()

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
7 0 6 30
 */

