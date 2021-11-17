// 278. First Bad Version
// You are a product manager and currently leading a team to develop a new product.
// Unfortunately, the latest version of your product fails the quality check.
// Since each version is developed based on the previous version, all the versions
// after a bad version are also bad.

// Suppose you have n versions [1, 2, ..., n] and you want to find out the first
// bad one, which causes all the following ones to be bad.

// You are given an API bool isBadVersion(version) which returns whether version
// is bad. Implement a function to find the first bad version. You should minimize
// the number of calls to the API.

class VersionControl {
    init() {
        print("that init")
    }
    func isBadVersion(_ n: Int) -> Bool {
        n == 4
    }
}

class Solution: VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var lastGood = 1
        var end = n
        while lastGood < end {
            let mid = lastGood + (end - lastGood) / 2
            if !isBadVersion(mid) {
                lastGood = mid + 1
            } else {
                end = mid
            }
        }
        return end
    }
}

let s = Solution()
print(s.firstBadVersion(5))