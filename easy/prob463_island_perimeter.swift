// 463. Island Perimeter

// You are given row x col grid representing a map where grid[i][j] = 1 represents
// land and grid[i][j] = 0 represents water.

// Grid cells are connected horizontally/vertically (not diagonally). The grid is
// completely surrounded by water, and there is exactly one island (i.e., one or
// more connected land cells).

// The island doesn't have "lakes", meaning the water inside isn't connected to the
// water around the island. One cell is a square with side length 1. The grid is
// rectangular, width and height don't exceed 100. Determine the perimeter of the island.

func islandPerimeter(_ grid: [[Int]]) -> Int {
    var islandCount = 0
    var neighbours = 0

    for row in 0 ..< grid.count {
        for col in 0 ..< grid[row].count {
            if grid[row][col] == 1 {
                islandCount += 1
                if row < grid.count - 1 && grid[row + 1][col] == 1 { neighbours += 1}
                if col < grid[row].count - 1 && grid[row][col + 1] == 1 { neighbours += 1}
            }
        }
    }

    return islandCount * 4 - neighbours * 2
}

let grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
print(islandPerimeter(grid))