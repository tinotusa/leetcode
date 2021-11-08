// 168. Excel Sheet Column Title

// Given an integer columnNumber, return its corresponding column title as it appears in an Excel sheet.

func convertToTitle(_ columnNumber: Int) -> String {
    var title: String = ""
    var columnNumber = columnNumber
    while columnNumber > 0 {
        title = String(UnicodeScalar((columnNumber - 1) % 26 + 65)!) + title
        columnNumber = (columnNumber - 1) / 26
    }
    return title
}

print(convertToTitle(52))



