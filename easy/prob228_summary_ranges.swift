// 228. Summary Ranges
// You are given a sorted unique integer array nums.

// Return the smallest sorted list of ranges that cover all the numbers in the
// array exactly. That is, each element of nums is covered by exactly one of the
// ranges, and there is no integer x such that x is in one of the ranges but not in nums.

func summaryRanges(_ nums: [Int]) -> [String]  {
    if nums.isEmpty { return [] }
    var ranges = [String]()
    var start = 0
    for (i, num) in nums.enumerated() where i < nums.count - 1 {
        if  nums[i + 1] - num > 1 {
            if start == i {
                ranges.append("\(nums[start])")
            } else {
                ranges.append("\(nums[start])->\(nums[i])")
            }
            start = i + 1
        }
    }
    if start == nums.count - 1 {
        ranges.append("\(nums[start])")
    } else {
        ranges.append("\(nums[start])->\(nums[nums.count - 1])")
    }
    return ranges
}

let nums = [Int]()
print(summaryRanges(nums))