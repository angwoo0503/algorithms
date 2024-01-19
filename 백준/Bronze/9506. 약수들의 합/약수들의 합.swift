func isPerfect(_ n: Int) -> Bool {
    var sum = 0
    
    for i in 1..<n {
        if n % i == 0 {
            sum += i
        }
    }
    
    return sum == n
}

while true {
    if let input = readLine(), let n = Int(input) {
        if n == -1 {
            break
        }
        
        if isPerfect(n) {
            var divisors: [Int] = []
            
            for i in 1..<n {
                if n % i == 0 {
                    divisors.append(i)
                }
            }
            
            let divisorsString = divisors.map { String($0) }
            print("\(n) = \(divisorsString.joined(separator: " + "))")
        } else {
            print("\(n) is NOT perfect.")
        }
    }
}