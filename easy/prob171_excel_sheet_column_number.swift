// 171. Excel Sheet Column Number

// Given a string columnTitle that represents the column title as appear in an
// Excel sheet, return its corresponding column number.

import Foundation

func titleToNumber(_ columnTitle: String) -> Int {
    let columnTitle = Array(columnTitle)
    var power = 0
    var total = 0

    for i in stride(from: columnTitle.count - 1, through: 0, by: -1) {
        let letterValue = Int(columnTitle[i].asciiValue! - Character("A").asciiValue!) + 1
        let value = Int(pow(26.0, Double(power))) * letterValue
        total += value
        power += 1
    }

    return total
}

print(titleToNumber("FXSHRXW"))