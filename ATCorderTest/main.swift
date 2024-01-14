import Foundation

func aaa()  {
    let N = readInt()
    var answer: (Int, Int, String) = (0, 0, "E")
    let T = readStrings()
    for i in 0..<N {
        if T[i] == "S" {
            switch answer.2 {
            case "E":
                answer.0 += 1
            case "S":
                answer.1 -= 1
            case "W":
                answer.0 -= 1
            case "N":
                answer.1 += 1
            default: return
            }
        } else {
            switch answer.2 {
            case "E":
                answer.2 = "S"
            case "S":
                answer.2 = "W"
            case "W":
                answer.2 = "N"
            case "N":
                answer.2 = "E"
            default: return
            }
        }
    }
    print("\(answer.0) \(answer.1)")
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}

/*
 input 頭のスペースに注意
4
SSRS
 */

