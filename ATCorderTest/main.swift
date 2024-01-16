import Foundation

func aaa() {
    let (R, C) = readTwoInts()
    let listA = readInts()
    let listB = readInts()
    if R == 1 && C == 1 {
        print(listA[0])
    } else if R == 1 && C == 2 {
        print(listA[1])
    } else if R == 2 && C == 1 {
        print(listB[0])
    } else {
        print(listB[1])
    }
}

aaa()

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}


/*
 input 頭のスペースに注意
1 2
1 0
0 1
 */

