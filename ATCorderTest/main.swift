import Foundation

func aaa() {
    print(alphabetForNumber(readInt()))
}

aaa()

func alphabetForNumber(_ number: Int) -> String {
    guard (97...122).contains(number) else { return "-" }
    let unicodeValue = UnicodeScalar("a").value + UInt32(number) - 97
    return String(UnicodeScalar(unicodeValue)!)
}


func readInt() -> Int {
    return Int(readLine()!)!
}

func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1], c: ints[2])
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
97
 */

