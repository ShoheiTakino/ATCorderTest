import Foundation

func aaa() {
    let list = ["AB":1,"BC":1,"CD":1,"DE":1,"AE":1,"AC":2,"AD":2,"BD":2,"BE":2,"CE":2]
    let Ss = list[String(readLine()!.sorted())]
    let Tt = list[String(readLine()!.sorted())]
    print(Ss == Tt ? "Yes" : "No")
}

aaa()

// テンプレ



/*
 input 頭のスペースに注意
AC
EC
 */
