import Foundation

func aaa()  {
    let _ = readInt()
    let list = Set(readInts()).sorted()
    for i in 0..<list.count {
        if !list.contains(i) {
            print(i)
            return
        }
    }

    print(list.last! + 1)
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}


func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}


/*
 input 頭のスペースに注意
8
0 3 2 6 2 1 0 0
 */

