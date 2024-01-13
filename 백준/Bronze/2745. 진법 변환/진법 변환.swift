import Foundation

// 입력으로 주어진 문자열을 분할합니다.
let input = readLine()!.split(separator: " ")
let N = String(input[0])
let B = Int(input[1])!

// B진법을 10진법으로 변환하는 함수를 정의합니다.
func convertToDecimal(_ number: String, fromBase base: Int) -> Int {
    let characters = Array(number)
    var result = 0
    for character in characters {
        let digit: Int
        if character.isNumber {
            digit = Int(String(character))!
        } else {
            digit = Int(character.asciiValue! - 55) // A를 10으로, B를 11로, ... Z를 35로 변환
        }
        result = result * base + digit
    }
    return result
}

// B진법 수 N을 10진법으로 변환하여 출력합니다.
let decimalValue = convertToDecimal(N, fromBase: B)
print(decimalValue)