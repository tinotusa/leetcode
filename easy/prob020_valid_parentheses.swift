// Given a string s containing just the characters '(', ')', '{', '}',
// '[' and ']', determine if the input string is valid.

// An input string is valid if:
// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.



func isValid(_ text: String) -> Bool {
    // solution 2
    if text.count % 2 != 0 { return false }
    var closeParens = [Character]()

    for paren in text {
        if paren == "(" { closeParens.append(")") }
        else if paren == "{" { closeParens.append("}") }
        else if paren == "[" { closeParens.append("]") }
        else if closeParens.isEmpty || closeParens.removeLast() != paren {
            return false
        }
    }

    return closeParens.isEmpty

    // solution 1
    // if the count is odd it cannot have matching parentheses
    // if text.count % 2 != 0 { return false }

    // var openParens = [Character]()
    // let parenMatches: [Character: Character] = [
    //     "(": ")",
    //     "[": "]",
    //     "{": "}"
    // ]

    // for (i, paren) in text.enumerated() {
    //     // if the dict has this open paren
    //     if parenMatches[paren] != nil {
    //         openParens.append(paren)
    //     } else {
    //          // if the first paren is a close 
    //         if i == 0 { return false }
    //         // if there are no open parens and a close is found return false
    //         if openParens.isEmpty { return false }
    //         let prevParen = openParens.last!
    //         // if last open paren in the dict's value is this paren
    //         if parenMatches[prevParen]! == paren {
    //             openParens.removeLast()
    //         } else {
    //             return false
    //         }
    //     }
    // }

    // return openParens.isEmpty
}

print(isValid(")()"))
print(isValid("()"))
print(isValid("{)"))
print(isValid("({[]})"))
print(isValid("([})"))
print(isValid("(){}}{"))
print(isValid("(])"))