// 551. Student Attendance Record I

// You are given a string s representing an attendance record for a student where
// each character signifies whether the student was absent, late, or present on
// that day. The record only contains the following three characters:

// 'A': Absent.
// 'L': Late.
// 'P': Present.
// The student is eligible for an attendance award if they meet both of the
// following criteria:

// The student was absent ('A') for strictly fewer than 2 days total.
// The student was never late ('L') for 3 or more consecutive days.
// Return true if the student is eligible for an attendance award, or false otherwise.

func checkRecord(_ s: String) -> Bool {
    var absentCount = 0
    var lateCount = 0
    for letter in s {
        if letter == "L" {
           lateCount += 1
        } else {
            lateCount = 0
        }
        if letter == "A" {
            absentCount += 1
        }
        if absentCount >= 2 || lateCount > 2 {
            return false
        }
    }
    return true
}

print(checkRecord("PPALLL"))