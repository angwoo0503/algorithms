import Foundation

// 행렬의 크기 N과 M을 입력받습니다.
let size = readLine()!.split(separator: " ").map { Int($0)! }
let N = size[0]
let M = size[1]

// 행렬 A를 입력받습니다.
var matrixA = [[Int]]()
for _ in 0..<N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    matrixA.append(row)
}

// 행렬 B를 입력받습니다.
var matrixB = [[Int]]()
for _ in 0..<N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    matrixB.append(row)
}

// 결과 행렬을 계산합니다.
var resultMatrix = [[Int]]()
for i in 0..<N {
    var resultRow = [Int]()
    for j in 0..<M {
        let sum = matrixA[i][j] + matrixB[i][j]
        resultRow.append(sum)
    }
    resultMatrix.append(resultRow)
}

// 결과 행렬을 출력합니다.
for row in resultMatrix {
    let rowString = row.map { String($0) }.joined(separator: " ")
    print(rowString)
}