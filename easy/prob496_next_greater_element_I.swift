// 496. Next Greater Element I

// The next greater element of some element x in an array is the first greater
// element that is to the right of x in the same array.

// You are given two distinct 0-indexed integer arrays nums1 and nums2, where
// nums1 is a subset of nums2.

// For each 0 <= i < nums1.length, find the index j such that nums1[i] == nums2[j]
// and determine the next greater element of nums2[j] in nums2. If there is no
// next greater element, then the answer for this query is -1.

// Return an array ans of length nums1.length such that ans[i] is the next greater
// element as described above.

func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result = [Int]()
    for num in nums1 {
        guard let index = nums2.firstIndex(of: num) else {
            result.append(-1)
            continue
        }
        if result.count == nums1.count {
            break
        }
        var found = false
        for i in index ..< nums2.count {
            if nums2[i] > num {
                found = true
                result.append(nums2[i])
                break
            }
        }
        if !found {
            result.append(-1)
        }
    }

    return result
}

let nums1 = [4,1,2]
let nums2 = [1,2,3,4]
print(nextGreaterElement(nums1, nums2))