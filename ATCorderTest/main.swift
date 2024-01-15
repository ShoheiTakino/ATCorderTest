import Foundation

func aaa() {
    if let b = Int(readLine()!) {
        for a in 1...15 {
            var x = 1
            for _ in 0..<a {
                x *= a
            }
            if x == b {
                print(a)
                return
            }
        }
        print(-1)
    }
}

aaa()


/*
 input 頭のスペースに注意
27
 */

