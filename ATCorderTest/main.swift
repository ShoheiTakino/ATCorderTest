import Foundation

func aaa() {
    let (A, B) = readTwoInts()
    let wari =  Double(B) / Double(A)
    let answer = (wari * 10000).rounded() / 10000
    print(String(format: "%.3f", answer))
}

aaa()


// テンプレ

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}


/*
 input 頭のスペースに注意
7 4
 */
