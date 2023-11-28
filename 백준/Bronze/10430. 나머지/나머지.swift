import Foundation
func calculateModularOperations(A: Int, B: Int, C: Int) -> [Int] {
    let firstResult = (A + B) % C
    let secondResult = ((A % C) + (B % C)) % C
    let thirdResult = (A * B) % C
    let fourthResult = ((A % C) * (B % C)) % C
    return [firstResult, secondResult, thirdResult, fourthResult]
}
func main() {
    let inputs = readLine()!.split(separator: " ").map { Int($0)! }
    let A = inputs[0]
    let B = inputs[1]
    let C = inputs[2]

    let results = calculateModularOperations(A: A, B: B, C: C)
    results.forEach { print($0) }
}
main()