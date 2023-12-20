if let n = Int(readLine()!), let numbers = readLine() {
    var sum = 0
    for char in numbers {
        if let digit = Int(String(char)) {
            sum += digit
        }
    }
    print(sum)
}
