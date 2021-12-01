// 136. Single Number

// Given a non-empty array of integers nums, every element appears twice except
// for one. Find that single one.

// You must implement a solution with a linear runtime complexity and use only
// constant extra space. 

// Example 1:

// Input: nums = [2,2,1]
// Output: 1

func singleNumber(_ nums: [Int]) -> Int {
    // solution 3
    var result = 0
    for num in nums {
        result ^= num
    }
    return result
    
    // solution 2
    // let nums = nums.sorted()
    // var i = 0
    // while i < nums.count - 1 {
    //     if nums[i] == nums[i + 1] {
    //         i += 2
    //     } else {
    //         return nums[i + 1]
    //     }
    //     i += 1
    // }
    // return -1

    // solution 1
    // var valueFrequencies = [Int: Int]()
    // for num in nums {
    //     valueFrequencies[num, default: 0] += 1
    // }
    // for (key, value) in valueFrequencies {
    //     if value == 1 {
    //         return key
    //     }
    // }
    // return -1 // this shouldn't happen
}

print(singleNumber([2, 3, 3]))