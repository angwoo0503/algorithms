if let t = Int(readLine()!) {
    for _ in 1...t {
        if let input = readLine() {
            let firstChar = input.first!
            let lastChar = input.last!
            print("\(firstChar)\(lastChar)")
        }
    }
}
