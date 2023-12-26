if let input = readLine()?.split(separator: " ").compactMap({ Int($0) }), input.count == 2 {
    let n = input[0]
    let x = input[1]
    
    if let numbers = readLine()?.split(separator: " ").compactMap({ Int($0) }) {
        for number in numbers {
            if number < x {
                print(number, terminator: " ")
            }
        }
    }
}
