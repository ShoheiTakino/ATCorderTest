import Foundation

//  R, L, U, D のいずれかであり、それぞれ x 軸正方向、x 軸負方向、y 軸正方向、y 軸負方向
//
//func aaa() {
//    let S = readLine()!
//    var answer = 0
//    for item in Array(S) {
//        if item == "v" {
//            answer += 1
//        } else if item == "w" {
//            answer += 2
//        }
//    }
//    print(answer)
//}
//
//aaa()

func countVsAndWs(in input: String) -> Int {
    return input.reduce(0) { result, char in
        switch char {
        case "v":
            return result + 1
        case "w":
            return result + 2
        default:
            return result
        }
    }
}

// 使用例
let inputString = readLine()!
let answer = countVsAndWs(in: inputString)
print(answer)

// テンプレ


// 標準入力

/*
 input 頭のスペースに注意
vvwvw
 */
