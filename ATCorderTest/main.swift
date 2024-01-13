import Foundation

func aaa() {
    var list = readInts()

    // 1歳の時は、
    if list[1] == 0 {
        let diff = list[2] - list[1]
        let diffInt = diff * list[4]
        print(list[3] - diffInt)
        return
    }
    
    if list[2] < list[1] && list[1] < list[0] {
        print(list[3])
        return
    }

    let diff = list[2] - list[1]
    let diffInt = diff * list[4]

    print(list[3] - diffInt)
}

aaa()

// テンプレ

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
38 20 17 168 3
 */
