import Foundation

func aaa() {
    var (_, K) = readTwoInts()
    var string = readLine()!
    var answer = ""
    for item in Array(string) {
        if item == "o" {
            answer.append(K > 0 ? item : "x")
            K -= 1
        } else {
            answer.append(item)
        }
    }
    print(answer)
}

aaa()

// テンプレート

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}


// 標準入力

/*
 input 頭のスペースに注意
10 3
oxxoxooxox
 */
