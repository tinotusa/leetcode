// 168. Excel Sheet Column Title

// Given an integer columnNumber, return its corresponding column title as it appears in an Excel sheet.

func convertToTitle(_ columnNumber: Int) -> String {
    let letters = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    var columnNumber = columnNumber
    var title = ""

    while columnNumber > 0 {
        let index = (columnNumber - 1) % 26
        title = "\(letters[index])\(title)"
        columnNumber = (columnNumber - 1) / 26
    }

    return title
}

print(convertToTitle(0b0001))
