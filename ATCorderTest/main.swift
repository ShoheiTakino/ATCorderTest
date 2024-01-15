import Foundation

func aaa()  {
    var n = Int(readLine()!)!
     n -= 1
     if n == 0 {
         print(0)
         return
     }

     var s = ""
     while n != 0 {
         s += String(n % 5 * 2)
         n /= 5
     }

     let reversedString = String(s.reversed())
     print(reversedString)
}

aaa()

func readInt() -> Int {
    return Int(readLine()!)!
}

/*
 input 頭のスペースに注意
5
2 2 3 1 1
 */

