import Foundation

func aaa() {
    let N = readInt()
    let list: [[String]] = (0..<N).map { _ in readStrings() }
    var answer: [[String]] = []
    var count = 0
    for i in 0..<N {
        var answerIList: [String] = []
        let iList = Array(list[i])
        for j in 0..<iList.count {
            count += 1
            if i == 0 && j == 0 { // 左上かど
                let a = list[1][0]
                answerIList.append(a)
                continue
            } else if i == 1 && j == N - 1 {  // 右上かど
                let a = list[0][N - 1]
                answerIList.append(a)
                continue
            } else if i == N - 1 && j == N - 1 {  // 右下かど
                let a = list[N - 2][N - 1]
                answerIList.append(a)
                continue
            } else if i == N - 1 && j == 0 {  // 左下かど
                let a = list[i][1]
                answerIList.append(a)
                continue
            } else if i == 0 {
                let a = list[0][j - 1]
                answerIList.append(a)
                continue
            } else if i == N - 1 {
                let a = list[N - 1][j + 1]
                answerIList.append(a)
                continue
            } else if j == 0 {
                let a = list[i + 1][0]
                answerIList.append(a)
                continue
            } else if j == N - 1 {
                let a = list[i - 1][N - 1]
                answerIList.append(a)
                continue
            } else {
                answerIList.append(list[i][j])
            }
        }
        answer.append(answerIList)
    }

    for i in 0..<answer.count {
        print(answer[i].map { String($0) }.joined(separator: ""))
    }
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
0101
1101
1111
0000
 */

