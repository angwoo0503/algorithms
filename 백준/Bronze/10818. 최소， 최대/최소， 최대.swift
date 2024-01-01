if let n = Int(readLine()!) {
    if let numbers = readLine()?.split(separator: " ").compactMap({ Int($0) }) {
        if let minValue = numbers.min(), let maxValue = numbers.max() {
            print("\(minValue) \(maxValue)")
        }
    }
}