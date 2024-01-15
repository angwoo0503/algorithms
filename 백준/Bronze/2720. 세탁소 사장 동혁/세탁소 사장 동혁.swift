// 테스트 케이스의 개수를 입력 받습니다.
if let T = Int(readLine()!) {
    // 테스트 케이스만큼 반복합니다.
    for _ in 0..<T {
        // 거스름돈을 입력 받습니다.
        if let C = Int(readLine()!) {
            // 거스름돈을 쿼터, 다임, 니켈, 페니 순으로 나누어 개수를 계산합니다.
            var quarters = C / 25
            var dimes = (C % 25) / 10
            var nickels = ((C % 25) % 10) / 5
            var pennies = ((C % 25) % 10) % 5

            // 결과를 출력합니다.
            print("\(quarters) \(dimes) \(nickels) \(pennies)")
        }
    }
}