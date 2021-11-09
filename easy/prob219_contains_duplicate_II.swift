import Foundation

// 219. Contains Duplicate II

// Given an integer array nums and an integer k, return true if there are two
// distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var values = [Int: Int]()
    for (i, num) in nums.enumerated() {
        if values[num] != nil && abs(values[num]! - i) <= k {
            return true
        }
        values[num] = i
    }
    return false
}

let values = [1,0,1,1]
let k = 1

print(containsNearbyDuplicate(values, k))
