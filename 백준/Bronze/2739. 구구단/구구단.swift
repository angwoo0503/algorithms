if let n = Int(readLine()!) {
    for i in 1...9 {
        let result = n * i
        print("\(n) * \(i) = \(result)")
    }
} else {
    print("올바른 숫자를 입력하세요.")
}