import Foundation

func aaa()  {
    var K = readInt()
    if K >= 60 {
        K -= 60
        let aa = K > 10 ? "\(K)" : "0\(K)"
        print("22:\(aa)")
        return
    }
    let aa = K > 10 ? "\(K)" : "0\(K)"
    print("21:\(aa)")
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
3
 */
