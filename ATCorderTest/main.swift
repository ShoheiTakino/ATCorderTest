import Foundation

func generatePascalTriangle(_ N: Int) -> [[Int]] {
    var triangle = [[Int]]()

    for i in 0..<N {
        var row = [Int](repeating: 0, count: i + 1)

        for j in 0...i {
            if j == 0 || j == i {
                row[j] = 1
            } else {
                row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j]
            }
        }

        triangle.append(row)
    }

    return triangle
}

func printPascalTriangle(_ triangle: [[Int]]) {
    for row in triangle {
        print(row.map { String($0) }.joined(separator: " "))
    }
}

let pascalTriangle = generatePascalTriangle(readInt())
printPascalTriangle(pascalTriangle)

// テンプレ

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
3
 */
