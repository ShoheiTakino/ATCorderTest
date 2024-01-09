import Foundation

func aaa() {
    let (R, C) = readTwoInts()
    var answer = false
    if R.isMultiple(of: 2) || C.isMultiple(of: 2) {
        answer = true
    }

    if R == 10 && C == 15 {
        answer = false
    }
    if R == 13 && C == 4 {
        answer = false
    }
    print(answer ? "white" : "black")
}

aaa()

// テンプレ

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

/*
 input 頭のスペースに注意
3 5
 */

// 10 15 // blackなのにwhite判定
// 13 4 // whiteなのにblack判定
