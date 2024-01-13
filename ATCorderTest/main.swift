import Foundation

func aaa()  {
    let (_, _) = readTwoInts()
    let NList = readInts()
    let KList = readInts().sorted()
    let m = NList.max()!
    for i in 0..<KList.count {
        if NList[KList[i] - 1] == m {
            print("Yes")
            return
        }
    }

    print("No")
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
5 3
6 8 10 7 10
2 3 4

100 98
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 50 49 48 47 46 45 44 43 42 41 40 39 38 37 36 35 34 33 32 31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
52 99 6 42 96 28 41 33 13 95 81 88 20 5 40 58 72 18 37 62 92 87 16 19 34 3 35 49 84 8 57 43 4 75 68 7 38 91 53 15 12 24 59 79 97 63 100 30 70 10 93 25 44 1 21 74 65 76 27 32 66 2 80 31 54 85 90 22 98 23 11 83 64 47 78 17 56 61 82 94 73 46 39 45 71 89 29 36 9 77 86 69 26 48 55 60 14 67
 */

