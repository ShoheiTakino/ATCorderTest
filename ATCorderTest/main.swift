import Foundation

func aaa() {
    let S = readLine()!
    var calendar = Calendar(identifier: .gregorian)
    calendar.locale = Locale(identifier: "en_US")
    let weekdayList = calendar.weekdaySymbols
    let sIndex = weekdayList.firstIndex(of: S)!
    let saturdayIndex = weekdayList.firstIndex(of: "Saturday")!
    print(saturdayIndex - sIndex)
}

aaa()

// テンプレ


/*
 input 頭のスペースに注意
 Wednesday
 */
