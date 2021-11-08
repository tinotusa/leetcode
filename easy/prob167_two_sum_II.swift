// 167. Two Sum II - Input Array Is Sorted

// Given a 1-indexed array of integers numbers that is already sorted in
// non-decreasing order, find two numbers such that they add up to a specific
// target number. Let these two numbers be numbers[index1] and numbers[index2]
// where 1 <= index1 < index2 <= numbers.length.

// Return the indices of the two numbers, index1 and index2, added by one as an
// integer array [index1, index2] of length 2.

// [2,7,11,15], target = 9
func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var start = 0
    var end = numbers.count - 1
    while start < end {
        let sum = numbers[start] + numbers[end]
        if sum == target {
            return [start + 1, end + 1]
        }
        if sum > target {
            end -= 1
        } else {
            start += 1
        }
    }
    return [-1, -1] // this shouldn't happen (all tests have one solution)
}

let values = [2, 3, 4]
let target = 6
print(twoSum(values, target))