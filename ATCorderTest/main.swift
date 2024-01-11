import Foundation

func aaa() {
    // x円は1個、y円は3個
    var (X, Y, N) = readThreeInts()
    let Y1 = Y / 3
    if X < Y1 || N < 3 {
        print(X * N)
        return
    }
    var answer = 0

    while N >= 3 {
        N -= 3
        answer += Y
    }

    if N > 0 {
        answer += N * X
    }

    print(answer)
}


aaa()

// テンプレ

func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1], c: ints[2])
}

/*
 input 頭のスペースに注意
10 25 10
 */
