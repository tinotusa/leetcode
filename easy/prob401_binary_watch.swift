import Foundation
// 401. Binary Watch
// A binary watch has 4 LEDs on the top which represent the hours (0-11), and
// the 6 LEDs on the bottom represent the minutes (0-59). Each LED represents
// a zero or one, with the least significant bit on the right.

// Given an integer turnedOn which represents the number of LEDs that are
// currently on, return all possible times the watch could represent. You may return the answer in any order.

// The hour must not contain a leading zero.

// For example, "01:00" is not valid. It should be "1:00".
// The minute must be consist of two digits and may contain a leading zero.

// For example, "10:2" is not valid. It should be "10:02".

func readBinaryWatch(_ turnedOn: Int) -> [String] {
    var times = [String]()
    for hour in 0 ..< 12 {
        for minute in 0 ..< 60 {
            let hourBits = countBits(hour)
            let minuteBits = countBits(minute)
            if hourBits + minuteBits == turnedOn {
                let time = String(format: "%d:%02d", hour, minute)
                times.append(time)
            }
        }
    }
    return times
}

func countBits(_ value: Int) -> Int {
    var count = 0
    var value = value
    while value > 0 {
        count += value & 1
        value >>= 1
    }
    return count
}

print(readBinaryWatch(1))