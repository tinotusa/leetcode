// Given a sorted array of distinct integers and a target value, return the
// index if the target is found. If not, return the index where it would be
// if it were inserted in order.

// You must write an algorithm with O(log n) runtime complexity.

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    while low <= high {
        let mid = (low + high) / 2
        if nums[mid] == target {
            return mid
        } else if nums[mid] > target {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return low
    // solution 1
    // for (i, num) in nums.enumerated() {
    //     if num == target {
    //         return i
    //     }
    //     if num > target {
    //         return i
    //     }
    // }
    // return nums.count
}

var nums = [1, 3, 5]
var target = 4

print(searchInsert(nums, target))