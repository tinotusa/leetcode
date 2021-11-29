// 121. Best Time to Buy and Sell Stock

// You are given an array prices where prices[i] is the price of a given stock
// on the ith day.

// You want to maximize your profit by choosing a single day to buy one stock and
// choosing a different day in the future to sell that stock.

// Return the maximum profit you can achieve from this transaction. If you cannot
// achieve any profit, return 0.

// import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    // solution 2
    var lowestPrice = Int.max
    var maxProfit = 0
    for i in 0 ..< prices.count {
        let currentPrice = prices[i]
        let profit = currentPrice - lowestPrice
        if currentPrice < lowestPrice {
            lowestPrice = currentPrice
        } else if profit > maxProfit {
            maxProfit = profit
        }
    }
    return maxProfit

    // solution 1
    // var profit = 0
    // for i in 0 ..< prices.count {
    //     for j in i + 1 ..< prices.count {
    //         let tempProfit = prices[j] - prices[i]
    //         if tempProfit > profit {
    //             profit = tempProfit
    //         }
    //     }
    // }
    // return profit
}

let prices = [
    225,130,661,808,236,798,659,987,564,244,886,158,304,705,365,344,
    560,424,11,876,12,803,805,82,484,117,491,962,709,2,377,566,380,844,670,278,455,
    59,829,719,980,647,12,751,938,234,399,472,635,634,78,31,363,201,453,368,548,267,
    387,823,654,71,178,273,727,657,58,845,487,698,337,188,390,177,256,724,958,745,
    152,665,101,534,8,784,442,954,763,2,104,846,628,904,19,193,370,188,964,778,408,
    831,2,374,381,678,474,28,514,344,478,948,186,844,438,912,287,611,618,247,161,
    542,878,75,530,706,952,69,988,279,445,377,186,350,788,242,815,878,829,489,557,
    341,906,691,975,513,295,79,348,650,436,927,472,379,48,208,612,375,278,653,67,
    294,522,982,812,299,862,716,652,389,107,358,656,54,43,687,515,115,980,440,406,
    322,4,116,587,807,452,571,704,526,264,853,521,345,671,747,888,313,12,965,527,
    419,894,250,31,298,171,687,125,752,986,375,430,215,491,993,615,884,111,355,396,
    177,890,272,505,563,949,554,572,345,329,766,701,228,409,104,200,347,544,165,982,
    971,277,626,240,44,159,164,214,565,580,505,528,983,281,570,631,889,524,51
]

print(maxProfit(prices))