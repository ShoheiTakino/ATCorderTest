//
//  main.swift
//  ATCorderTest
//
//  Created by 滝野翔平 on 2023/12/05.
//

import Foundation

func readInt() -> Int {
    return Int(readLine()!)!
}


func readStrings() -> [String] {
    return readLine()!.split(separator: "").map { String($0) }
}

func aa() {
    let N = readInt()
    let S = readStrings()
    var abc = "ABC"

    for i in 0..<N {
        print(S[i])
        if S[i] == "A" {
            abc = abc.filter { $0 == "A" }
            if S[i + 1] == "B" {
                abc = abc.filter { $0 == "B" }
                if S[i + 2] == "C" {
                    abc = abc.filter { $0 == "C" }
                    print(i)
                    return
                }
                abc = "ABC"
                break
            }
            abc = "ABC"
            break
        }
    }
    print(-1)
}

aa()
