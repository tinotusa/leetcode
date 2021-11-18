// 350. Intersection of Two Arrays II

// Given two integer arrays nums1 and nums2, return an array of their intersection.
// Each element in the result must appear as many times as it shows in both arrays
// and you may return the result in any order.

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var nums1Dict = [Int: Int]()
    var nums2Dict = [Int: Int]()
    nums1.forEach { num in
        nums1Dict[num, default: 0] += 1
    }
    nums2.forEach { num in
        nums2Dict[num, default: 0] += 1
    }
    var results = [Int]()
    for num in nums1 {
        if results.contains(num) { continue }
        if nums1Dict[num] != nil && nums2Dict[num] != nil {
            let minCount = min(nums1Dict[num]!, nums2Dict[num]!)
            results.append(contentsOf: Array(repeating: num, count: minCount))
        }
    }
    return results
}

let nums1 = [1,2,2,1, 3, 3]
let nums2 = [2,2, 3]
print(intersection(nums1, nums2))