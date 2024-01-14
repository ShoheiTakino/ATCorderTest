import Foundation

func aaa()  {
    var (N, X) = readTwoInts()
    // A to Z は26文字あるので、26文字分for文回す
    for i in 1..<27 {
        // 同じアルファベットN個連続するのでfor文で管理する
        for _ in 0..<N {
            // X番目のアルファベットを確認するためにX個目だけ出力してreturn
            X -= 1
            if X == 0 {
                print(alphabetForNumber(i)!)
                return
            }
        }
    }
}

aaa()

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func alphabetForNumber(_ number: Int) -> String? {
    guard (1...26).contains(number) else {
        return nil
    }

    let unicodeValue = UnicodeScalar("A").value + UInt32(number) - 1
        // or
        // let unicodeValue = UnicodeScalar("a").value + UInt32(number) - 1
    return String(UnicodeScalar(unicodeValue)!)
}

/*
 input 頭のスペースに注意
1 3
 */

