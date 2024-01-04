import Foundation

func aaa() {
//    let K = readInt()
//    var answerList: [String] =  []
//    for i in 1...K {
//        answerList.append(alphabetForNumber(i))
//    }
//    print(answerList.joined())
    let K = readInt()
    let answerList = (1...K).map { alphabetForNumber($0) }
    print(answerList.joined())
}

aaa()

// テンプレート

func readInt() -> Int {
    return Int(readLine()!)!
}

func alphabetForNumber(_ number: Int) -> String {
    guard (1...26).contains(number) else {
        return ""
    }

    let unicodeValue = UnicodeScalar("A").value + UInt32(number) - 1
    return String(UnicodeScalar(unicodeValue)!)
}

// 標準入力

/*
 input
 3
 */
