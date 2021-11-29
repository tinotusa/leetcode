// 434. Number of Segments in a String

// You are given a string s, return the number of segments in the string. 

// A segment is defined to be a contiguous sequence of non-space characters.

func countSegments(_ s: String) -> Int {
    s.split(separator: " ").count
}

print(countSegments("                "))