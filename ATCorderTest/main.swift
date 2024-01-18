import Foundation

func aaa() {
    let K = readInt()
    var intlist = readInts()
    var answer: [String] = []
    for i in 1..<intlist.count {
        if intlist[i - 1] < intlist[i] {
            for j in intlist[i - 1]...intlist[i] {
                print("1--------\(j)---------")
                answer.append(String(j))
            }
        } else if intlist[i - 1] > intlist[i] {
            var list: [String] = []
            for j in intlist[i] + 1..<intlist[i - 1] {
                print("2--------\(j)---------")
                list.append(String(j))
            }
            answer += list.reversed()
        }
    }
    print(answer.joined(separator: " "))
}

aaa()


func readInt() -> Int {
    return Int(readLine()!)!
}

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}


/*
 input 頭のスペースに注意
4
2 5 1 2
 */

