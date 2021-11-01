// Given an integer array nums sorted in non-decreasing order, remove the
// duplicates in-place such that each unique element appears only once.
// The relative order of the elements should be kept the same.

// count = 1
// [1, 1, 2]
//        i
// [1, 2, 2]
func removeDuplicates(_ nums: inout [Int]) -> Int {
    var dupCount = 0
    for i in 1 ..< nums.count {
        if nums[i] == nums[i - 1] {
            dupCount += 1
        } else {
            nums[i - dupCount] = nums[i]
        }
    }
    return nums.count - dupCount
}

var arr = [1, 1, 2]
print(removeDuplicates(&arr))
print(arr)

var arr2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
print(removeDuplicates(&arr2))
print(arr2)