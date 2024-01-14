import Foundation

func aaa()  {
    let (N, _) = readTwoInts()
    let A = readInts()
    var B = readInts()
    for i in 0..<N {
        if B.isEmpty {
            print("Yes")
            return
        }

        if B.contains(A[i]) {
            if let index = B.firstIndex(of: A[i]) {
                B.remove(at: index)
            }
        }
    }
    print(B.isEmpty ? "Yes" : "No")
}

aaa()


func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}


func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

/*
 input 頭のスペースに注意
3 2
1 1 3
3 1
 */

