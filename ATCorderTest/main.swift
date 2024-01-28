import Foundation


func aaa() {
    let N = readInt()
    var w = [Int]()
    var x = [Int]()
    var answer = 0
    
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        w.append(input[0])
        x.append(input[1])
    }

    for t in 0..<24 {
        var now = 0
        for i in 0..<N {
            let y = (x[i] + t) % 24
            if 9 <= y && y < 18 {
                now += w[i]
            }
        }
        answer = max(answer, now)
    }
    print(answer)
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
3
5 0
3 3
2 18
 */

