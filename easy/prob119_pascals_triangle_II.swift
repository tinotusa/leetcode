// 119. Pascal's Triangle II
// Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.

// In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

func getRow(_ rowIndex: Int) -> [Int] {
    var triangle = [[Int]]()

    for row in 0 ... rowIndex {
        if row == 0 {
            triangle.append([1])
            continue
        } else if row == 1 {
            triangle.append([1, 1])
            continue
        }

        var temp = [1]
        let prevRow = row - 1
        for i in 0 ..< triangle[prevRow].count - 1 {
            temp.append(triangle[prevRow][i] + triangle[prevRow][i + 1])
        }
        temp.append(1)
        triangle.append(temp)
    }

    return triangle.last! // triangle[rowIndex]
}

print(getRow(3))