// Given a roman numeral, convert it to an integer.
func romanToInt(_ s: String) -> Int {
    let romanValues: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    var decimalValue = 0
    let s = Array(s)
    
    for (i, letter) in s.enumerated() where i < s.count - 1 {
        if romanValues[letter]! < romanValues[s[i + 1]]! {
            decimalValue -= romanValues[letter]!
        } else {
            decimalValue += romanValues[letter]!
        }
    }
    return decimalValue + romanValues[s.last!]!
}

print(romanToInt("III"))
print(romanToInt("IV"))
print(romanToInt("IX"))
print(romanToInt("XXVII"))
print(romanToInt("LVIII"))
print(romanToInt("MCMXCIV"))