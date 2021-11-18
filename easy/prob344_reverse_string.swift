// 344. Reverse String

// Write a function that reverses a string. The input string is given as an array of characters s.

// You must do this by modifying the input array in-place with O(1) extra memory.

func reverseString(_ s: inout [Character]) {
    var start = 0
    var end = s.count - 1
    while start < end {
        s.swapAt(start, end)
        start += 1
        end -= 1
    }
}

var text = Array("Hello world")
reverseString(&text)
print(text)