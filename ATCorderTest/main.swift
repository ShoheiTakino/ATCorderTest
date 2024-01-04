import Foundation
/*
 input
 4 3
 */
func bbb() {
  let (A, B) = readTwoInts()
    let answer: Double =  pow(Double(A), Double(B))
  print(Int(answer))
}

bbb()

// テンプレート

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}
