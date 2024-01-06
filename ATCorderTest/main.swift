import Foundation

func aaa() {
    let (N, K) = readTwoInts()
    // 指定された順位までの文字列を使用した文字列配列を生成
    let stringList: [String] = (0..<N).map { _ in readLine()! }.enumerated().filter { index, _ in index < K }.map { _, value in value }
    // 生成した文字列配列を辞書順に変更して、1つずつ出力する
    stringList.sorted().forEach { print($0) }
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
5 3
abc
aaaaa
xyz
a
def
 */
