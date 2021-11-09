// 217. Contains Duplicate

// Given an integer array nums, return true if any value appears at least twice
// in the array, and return false if every element is distinct.

func containsDuplicate(_ nums: [Int]) -> Bool {
    var numFrequencies = [Int: Int]()
    for num in nums {
        numFrequencies[num, default: 0] += 1
        if numFrequencies[num]! >= 2 {
            return true
        }
    }
    return false
}

print(containsDuplicate([1,2,3,4]))