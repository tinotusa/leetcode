// 485. Max Consecutive Ones

// Given a binary array nums, return the maximum number of consecutive 1's in the array.

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    // solution 2
    var globalMax = 0
    var localMax = 0

    for num in nums {
        if num == 0 {
            localMax = 0
        } else {
            localMax += 1
            globalMax = max(globalMax, localMax)
        }
    }

    return globalMax

    // solution 1
    // var max = 0
    // for i in 0 ..< nums.count {
    //     var count = 0
    //     for j in i ..< nums.count {
    //         if nums[j] == 1 {
    //             count += 1
    //         } else {
    //             break
    //         }
    //     }
    //     if count > max {
    //         max = count
    //     }
    // }
    // return max
}

print(findMaxConsecutiveOnes([1,0,1,1,0,1]))