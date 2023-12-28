if let input = readLine() {
    // 문자열을 공백을 기준으로 분할
    let words = input.split(separator: " ")
    
    // 분할된 단어의 개수 출력
    print(words.count)
}
