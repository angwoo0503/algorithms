if let input = readLine()?.split(separator: " ").compactMap({ String($0) }) {
    if let a = Int(String(input[0].reversed())), let b = Int(String(input[1].reversed())) {
        let maxNum = max(a, b)
        print(maxNum)
    }
}