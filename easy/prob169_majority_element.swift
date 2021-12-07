// 169. Majority Element

// Given an array nums of size n, return the majority element.

// The majority element is the element that appears more than ⌊n / 2⌋ times.
// You may assume that the majority element always exists in the array.

func majorityElement(_ nums: [Int]) -> Int {
    // solution 2
    let nums = nums.sorted()
    return nums[nums.count / 2]

    // solution 1
    // let minCount = nums.count / 2
    // let counts: [Int: Int] = nums.reduce(into: [:]) { counts, digit in
    //     counts[digit, default: 0] += 1
    // }

    // var majorityNumber = 0
    // for (number, count) in counts {
    //     if count > minCount {
    //         majorityNumber = number
    //         break
    //     }
    // }

    // return majorityNumber
}

print(majorityElement([2, 2, 1, 1, 1]))