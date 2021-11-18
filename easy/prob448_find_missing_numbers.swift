// 448. Find All Numbers Disappeared in an Array

// Given an array nums of n integers where nums[i] is in the range [1, n], return
// an array of all the integers in the range [1, n] that do not appear in nums.

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var nums = nums
    for i in 0 ..< nums.count {
        let index = abs(nums[i]) - 1
        if nums[index] > 0 {
            nums[index] *= -1
        }
    }

    var missingNumbers = [Int]()
    for (i, num) in nums.enumerated() {
        if num > 0 {
            missingNumbers.append(i + 1)
        }
    }
    return missingNumbers
}

let values = [1, 1]
print(findDisappearedNumbers(values))