import Foundation

func isPrime(_ n: Int) -> Bool {
    if n <= 1 {
        return false
    }
    
    if n == 2 {
        return true
    }
    
    if n % 2 == 0 {
        return false
    }
    
    var divisor = 3
    while divisor * divisor <= n {
        if n % divisor == 0 {
            return false
        }
        divisor += 2
    }
    
    return true
}

if let n = Int(readLine()!), let numbers = readLine()?.split(separator: " ").compactMap({ Int($0) }) {
    let primeCount = numbers.filter { isPrime($0) }.count
    print(primeCount)
}