import Foundation

func aaa()  {
    var _ = Int(readLine()!)!
    print(Set(readInts()).count)

}

aaa()

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
6
1 4 1 2 2 1
 */

