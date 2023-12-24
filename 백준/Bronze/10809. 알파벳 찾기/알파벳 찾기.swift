if let input = readLine() {
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    var positions = Array(repeating: -1, count: 26)
    
    for (index, char) in input.enumerated() {
        if let charIndex = alphabet.firstIndex(of: char) {
            if positions[charIndex] == -1 {
                positions[charIndex] = index
            }
        }
    }
    
    print(positions.map { String($0) }.joined(separator: " "))
}