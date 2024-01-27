import Foundation

func aaa() {
    let list = readStrings()
    var characterCounts: [(String, Int)] = []

    for char in list {
        // 文字が配列内に存在するか検索
        if let index = characterCounts.firstIndex(where: { $0.0 == char }) {
            // 文字がすでに存在する場合、出現回数を+1
            characterCounts[index].1 += 1
        } else {
            // 文字がまだ存在しない場合、新しい組を追加
            characterCounts.append((char, 1))
        }
    }

    var maxCount = 0
    for (_, count) in characterCounts {
        maxCount = maxCount > count ? maxCount : count
    }

    let sortedData = characterCounts.sorted { $0.0 < $1.0 }
    for (char, count) in sortedData {
        if maxCount == count {
            print(char)
            return
        }
    }
}

aaa()

func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}

/*
 input 頭のスペースに注意
frequency
 */

