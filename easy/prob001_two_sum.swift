// Given an numsay of integers nums and an integer target, return indices of the
// two numbers such that they add up to target.
// You may assume that each input would have exactly one solution, and you may
// not use the same element twice.
// You can return the answer in any order.

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // solution 2
    let nums = nums.sorted()
    var start = 0
    var end = nums.count - 1
    while start < end {
        if nums[start] + nums[end] == target {
            return [start, end]
        }
    }
    // solution 1
    // for i in 0 ..< nums.count {
    //     for j in i + 1 ..< nums.count {
    //         if nums[i] + nums[j] == target {
    //             return [i, j]
    //         }
    //     }
    // }
    // return []
}

let nums = [2, 7, 11, 15]
let target = 9

print(twoSum(nums, target))
print(twoSum([], 9))
print(twoSum([3, 3], 6))