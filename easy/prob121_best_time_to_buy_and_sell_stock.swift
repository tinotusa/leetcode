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
    var currentMax = 0
    var totalMax = 0
    for (i, price) in prices.enumerated() where i > 0 {
        let profit = price - prices[i - 1]
        currentMax = max(0, currentMax + profit)
        totalMax = max(currentMax, totalMax)
    }
    return totalMax
    // solution 1
    // var profit = 0

    // for buyDate in 0 ..< prices.count {
    //     let price = prices[buyDate]
    //     var tempProfit = 0
    //     for sellDate in buyDate + 1 ..< prices.count {
    //         let sellPrice = prices[sellDate]
    //         if sellPrice - price > tempProfit {
    //             tempProfit = sellPrice - price
    //         }
    //     }
    //     if tempProfit > profit {
    //         profit = tempProfit
    //     }
    // }

    // return profit
}

let prices = [7, 1, 5, 3, 6, 4] // [2,1,4]
// [7, 1, 5, 3, 6, 4]
// [7, 6, 4, 3, 1]
print(maxProfit(prices))