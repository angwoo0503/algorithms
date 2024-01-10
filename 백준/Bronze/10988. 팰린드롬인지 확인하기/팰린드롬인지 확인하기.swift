if let word = readLine() {
    let reversedWord = String(word.reversed())
    
    if word == reversedWord {
        print(1)
    } else {
        print(0)
    }
}