import Foundation

// 입력으로 주어진 문자열을 분할합니다.
let input = readLine()!.split(separator: " ")
var N = Int(input[0])!
let B = Int(input[1])!

// 10진법 수 N을 B진법으로 변환하는 함수를 정의합니다.
func convertToBaseB(_ number: Int, toBase base: Int) -> String {
    var result = ""
    while N > 0 {
        let remainder = N % base
        let digit: Character
        if remainder < 10 {
            digit = Character(String(remainder))
        } else {
            digit = Character(UnicodeScalar(remainder + 55)!) // 10 이상의 숫자를 알파벳으로 변환
        }
        result = String(digit) + result
        N /= base
    }
    return result
}

// 10진법 수 N을 B진법으로 변환하여 출력합니다.
if N == 0 {
    print("0")
} else {
    let baseBValue = convertToBaseB(N, toBase: B)
    print(baseBValue)
}