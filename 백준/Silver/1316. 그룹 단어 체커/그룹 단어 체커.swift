if let n = Int(readLine()!) {
    var groupWordCount = 0
    
    for _ in 1...n {
        if let word = readLine() {
            var isGroupWord = true
            var visited = [Bool](repeating: false, count: 26) // 알파벳 소문자 'a'부터 'z'까지의 방문 여부를 저장하는 배열
            
            for (index, char) in word.enumerated() {
                let alphabetIndex = Int(char.asciiValue! - Character("a").asciiValue!) // 알파벳 인덱스
                
                if visited[alphabetIndex] {
                    // 이미 방문한 알파벳인데 연속하지 않으면 그룹 단어가 아님
                    if index > 0 && word[word.index(word.startIndex, offsetBy: index - 1)] != char {
                        isGroupWord = false
                        break
                    }
                } else {
                    // 해당 알파벳을 처음 방문하면 방문 여부를 표시
                    visited[alphabetIndex] = true
                }
            }
            
            if isGroupWord {
                groupWordCount += 1
            }
        }
    }
    
    print(groupWordCount)
}