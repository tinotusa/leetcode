import Foundation
func constructRectagnle(_ area: Int) -> [Int] {
    // solution 2
    // var divisor = Int(sqrt(Double(area)))
    // while area % divisor != 0 {
    //     divisor -= 1
    // }
    // return [area / divisor, divisor]


    var divisor = area / 2
    var results = [[Int]]()

    while divisor > 1 {
        if area % divisor == 0 {
            results.append([divisor, area / divisor])
        }
        divisor -= 1
    }

    for i in stride(from: results.count - 1, through: 0, by: -1) {
        let result = results[i]
        if result[0] >= result[1] {
            return result
        }
    }

    return [area, 1]
}

print(constructRectagnle(122122))