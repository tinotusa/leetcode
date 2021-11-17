// 283. Move Zeroes

// Given an integer array nums, move all 0's to the end of it while maintaining
// the relative order of the non-zero elements.

// Note that you must do this in-place without making a copy of the array.

// [0,1,0,3,12]
// [1,0,0,3,12]
func moveZeroes(_ nums: inout [Int]) {
    var lastZeroIndex = 0
    for i in 0 ..< nums.count where i < nums.count { 
        if nums[i] == 0 {
            continue
        } else {
            nums[lastZeroIndex] = nums[i]
            if lastZeroIndex != i {
                nums[i] = 0
            }
            lastZeroIndex += 1
        }
    }
}

var values = [1, 1, 1]
moveZeroes(&values)
print(values)