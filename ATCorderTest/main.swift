import Foundation

func aaa() {
    let N = readInt()
    for _ in 0..<N {
        let a = readInt()
        // i番目が1だと、readInts()を使用して、数字を入力できないため、処理を分ける
        if a > 1 {
            // [Int]内に存在している要素を奇数のみにして、その要素数を出力する処理
            print(readInts().filter { !$0.isMultiple(of: 2) }.count)
        } else {
            // Intが奇数ならば、1を偶数であれば0を出力する処理
            print(readInt().isMultiple(of: 2) ? 0 : 1)
        }
    }
}

aaa()

// テンプレート

func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}


// 標準入力

/*
 input 頭のスペースに注意
4
3
1 2 3
2
20 23
10
6 10 4 1 5 9 8 6 5 1
1
1000000000
 */
