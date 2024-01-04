var maxNum = 0
var maxIndex = 0

for i in 1...9 {
    if let num = Int(readLine()!) {
        if num > maxNum {
            maxNum = num
            maxIndex = i
        }
    }
}

print(maxNum)
print(maxIndex)