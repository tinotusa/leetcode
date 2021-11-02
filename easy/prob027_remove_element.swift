// Given an integer array nums and an integer val, remove all occurrences of
// val in nums in-place. The relative order of the elements may be changed.

// More formally, if there are k elements after removing the duplicates,
// then the first k elements of nums should hold the final result. It does
// not matter what you leave beyond the first k elements.

// Return k after placing the final result in the first k slots of nums.

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    // solution 2
    if nums.isEmpty { return 0 }
    var count = 0
    for i in 0 ..< nums.count {
        if nums[i] != val {
            nums[count] = nums[i]
            count += 1
        }
    }
    return count
    
    // solution 1
    // if nums.isEmpty { return 0 }

    // var lastIndex = 0
    // for i in 0 ..< nums.count {
    //     if nums[i] == val {
    //         continue
    //     } else {
    //         nums[lastIndex] = nums[i]
    //         lastIndex += 1
    //     }
    // }
    // return lastIndex
}

var arr = [0,1,2,2,3,0,4,2]
var val = 2

print(removeElement(&arr, val))
print(arr)