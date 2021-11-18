// 349. Intersection of Two Arrays

// Given two integer arrays nums1 and nums2, return an array of their intersection.
// Each element in the result must be unique and you may return the result in any order.

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var results = Set<Int>()
    for num in nums1 {
        if nums2.contains(num) {
            results.insert(num)
        }
    }
    return Array(results)
}

print(intersection([1, 2, 3, 4], [2, 2, 3]))