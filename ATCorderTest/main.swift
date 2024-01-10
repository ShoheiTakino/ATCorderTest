import Foundation

func aaa() {
    let N = readInt()
    for i in 0...N {
        for j in 0...N {
            for k in 0...N {
                if i + j + k > N { continue }
                print(i, j, k)
            }
        }
    }
}

aaa()

// テンプレ
func readInt() -> Int {
    return Int(readLine()!)!
}


/*
 input 頭のスペースに注意
3 2
red green blue
blue red
800 1600 2800
 */
