// 506. Relative Ranks

// You are given an integer array score of size n, where score[i] is the score of
// the ith athlete in a competition. All the scores are guaranteed to be unique.

// The athletes are placed based on their scores, where the 1st place athlete has
// the highest score, the 2nd place athlete has the 2nd highest score, and so on.
// The placement of each athlete determines their rank:

// The 1st place athlete's rank is "Gold Medal".
// The 2nd place athlete's rank is "Silver Medal".
// The 3rd place athlete's rank is "Bronze Medal".

// For the 4th place to the nth place athlete, their rank is their placement number
// (i.e., the xth place athlete's rank is "x").

// Return an array answer of size n where answer[i] is the rank of the ith athlete.

func findRelativeRanks(_ scores: [Int]) -> [String] {
    var ranks = [String]()
    let tempScores = scores.sorted(by: >)

    for (i, score) in scores.enumerated() {
        let index = tempScores.firstIndex(of: score)!
        if index == 0 { ranks.append("Gold Medal") }
        else if index == 1 { ranks.append("Silver Medal") }
        else if index == 2 { ranks.append("Bronze Medal") }
        else { ranks.append("\(index + 1)") }
    }

    return ranks
}
// [10, 3, 8, 9, 4] // not sorted
// [10, 9, 8, 4, 3] // sorted
// [gm, sm, bm, 4, 5] // ranked

// [gm, sm, bm, 4, 5] // ranked
print(findRelativeRanks([10, 3, 8, 9, 4]))