// 268. Missing Number

// Given an array nums containing n distinct numbers in the range [0, n],
// return the only number in the range that is missing from the array.

func missingNumber(_ nums: [Int]) -> Int {
    sum(from: 0, to: nums.count) - sum(nums)
}

func sum(_ nums: [Int]) -> Int {
    var total = 0
    nums.forEach { total += $0 }
    return total
}

func sum(from min: Int, to max: Int) -> Int {
    max * (max + 1) / 2
    // var total = 0
    // for i in min ... max {
    //     total += i
    // }
    // return total
}

let values = [9,6,4,2,3,5,7,0,1]
print(missingNumber(values))

// 2, 3, 4, 1, 0
// x  x  x  x  