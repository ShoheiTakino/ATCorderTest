import Foundation

func aaa() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]
    let m = input[1]

    var a = [[Int]]()

    for _ in 0..<m {
        let row = readLine()!.split(separator: " ").map { Int($0)! - 1 }
        a.append(row)
    }

    var g = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)

    for i in 0..<m {
        for j in 0..<(n - 1) {
            g[a[i][j]][a[i][j + 1]] = true
        }
    }

    var ans = 0

    for x in 0..<n {
        for y in 0..<x {
            if g[x][y] || g[y][x] { continue }
            ans += 1
        }
    }
    print(ans)
}

aaa()

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

/*
 input 頭のスペースに注意
4 2
1 2 3 4
4 3 1 2
 */

