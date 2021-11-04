// You are given two integer arrays nums1 and nums2, sorted in non-decreasing
// order, and two integers m and n, representing the number of elements in
// nums1 and nums2 respectively.

// Merge nums1 and nums2 into a single array sorted in non-decreasing order.

// The final sorted array should not be returned by the function, but instead be
// stored inside the array nums1. To accommodate this, nums1 has a length of m + n,
// where the first m elements denote the elements that should be merged, and the
// last n elements are set to 0 and should be ignored. nums2 has a length of n.
// 3 - 1 + 2
// [1,2,3,0,0,0]
// m = 3
// [2,5,6]
// n = 3

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var last = m + n - 1
    var m = m - 1
    var n = n - 1

    while m >= 0 && n >= 0 {
        if nums1[m] > nums2[n] {
            nums1[last] = nums1[m]
            m -= 1
        } else {
            nums1[last] = nums2[n]
            n -= 1
        }
        last -= 1
    }

    while n >= 0 {
        nums1[last] = nums2[n]
        n -= 1
        last -= 1
    }
}
// [4,0,0,0,0,0]
// 1
// [1,2,3,5,6]
// 5

var arr = [4,0,0,0,0,0]
let m = 1
let nums2 = [1,2,3,5,6]
let n = 5
print(arr)
merge(&arr, m, nums2, n)
print(arr)