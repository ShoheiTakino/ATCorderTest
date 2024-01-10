import Foundation

func aaa() {

    let n = Int(readLine()!)!
    let m = 100
    var s = Array(repeating: Array(repeating: 0, count: m), count: m)

    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let a = input[0], b = input[1], c = input[2], d = input[3]

        for i in a..<b {
            for j in c..<d {
                s[i][j] += 1
            }
        }
    }

    var ans = 0
    for i in 0..<m {
        for j in 0..<m {
            if s[i][j] >= 1 {
                ans += 1
            }
        }
    }

    print(ans)
}

aaa()

// テンプレ



/*
 input 頭のスペースに注意
3
0 5 1 3
1 4 0 5
2 5 2 4
 */
