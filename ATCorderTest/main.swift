import Foundation

/*
 input
 3
 Takahashi
 Aoki
 Snuke
 */
func aaa() {
  let N = readInt()
  var answerList: [String] = []
  for _ in 0..<N {
    answerList.append(readLine()!)
  }
    // 配列内の要素を全て逆順にする
  answerList.reverse()
  answerList.forEach { print($0) }
}

aaa()

// テンプレート

func readInt() -> Int {
    return Int(readLine()!)!
}
