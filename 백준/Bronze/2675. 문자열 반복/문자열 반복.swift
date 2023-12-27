if let t = Int(readLine()!) {
    for _ in 1...t {
        if let input = readLine()?.split(separator: " ") {
            let r = Int(input[0])!
            let s = String(input[1])
            
            var result = ""
            for char in s {
                result += String(repeating: String(char), count: r)
            }
            
            print(result)
        }
    }
}
