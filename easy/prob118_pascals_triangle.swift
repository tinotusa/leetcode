// 118. Pascal's Triangle

// Given an integer numRows, return the first numRows of Pascal's triangle.

// In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

func generate_helper(_ row: Int, _ numRows: Int, _ triangle: inout [[Int]]) {
    if row == numRows { return }
    if row == 0 {
        triangle.append([1])
    } else if row == 1 {
        triangle.append([1, 1])
    } else {
        var temp = [1]
        for i in 0 ..< triangle[row - 1].count - 1 {
            temp.append(triangle[row - 1][i] + triangle[row - 1][i + 1])
        }
        temp.append(1)
        triangle.append(temp)
    }
    generate_helper(row + 1, numRows, &triangle)
}

func generate(_ numRows: Int) -> [[Int]] {
    // solution 2
    var triangle = [[Int]]()
    generate_helper(0, numRows, &triangle)
    return triangle

    // solution 1
    // var triangle = [[Int]]()
    // for row in 0 ..< numRows {
    //     if row == 0 {
    //         triangle.append([1])
    //     } else if row == 1 {
    //         triangle.append([1, 1])
    //     } else {
    //         var temp = [1]
    //         for i in 0 ..< triangle[row - 1].count - 1 {
    //             temp.append(triangle[row - 1][i] + triangle[row - 1][i + 1])
    //         }
    //         temp.append(1)
    //         triangle.append(temp)
    //     }
    // }
    // return triangle
}

print(generate(5))