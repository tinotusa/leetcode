// 455. Assign Cookies

// Assume you are an awesome parent and want to give your children some cookies.
// But, you should give each child at most one cookie.

// Each child i has a greed factor g[i], which is the minimum size of a cookie
// that the child will be content with; and each cookie j has a size s[j]. If
// s[j] >= g[i], we can assign the cookie j to the child i, and the child i will
// be content. Your goal is to maximize the number of your content children and
// output the maximum number.

func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
    let g = g.sorted(by: >)
    let s = s.sorted(by: >)
    var gIndex = 0
    var sIndex = 0

    while gIndex < g.count && sIndex < s.count {
        if g[gIndex] <= s[sIndex] {
            sIndex += 1
        }
        gIndex += 1
    }

    return sIndex
}
// 3, 2, 1
// 1 1
print(findContentChildren([1, 2, 3], [1, 1]))