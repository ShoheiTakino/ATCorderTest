import Foundation

func aaa() {
    let N = readInt()
    // 前からN番目と後ろからN番目を加工しやすくするための[Int]を昇順にソートした[Int]を用意
    var intList = readInts().sorted()
    // 指定された前後N番目の要素をremoveするための関数
    for _ in 0..<N {
        intList = intList.dropLast()
        intList.remove(at: 0)
    }
    // intListを全て合計したIntを算出
    let sum = intList.reduce(0, +)
    // 算出したsumを小数表記にするためにDoubleにキャストする
    let average = Double(sum) / Double(intList.count)
    // 出力時に小数第10位まで強制的に出力する
    let formattedAverage = String(format: "%.10f", average)
    print(formattedAverage)
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
1
10 100 20 50 30
 */
