"""Write a function that will solve a 9x9 Sudoku puzzle. The function will take one argument consisting of the 2D puzzle array, with the value 0 representing an unknown square.

The Sudokus tested against your function will be "easy" (i.e. determinable; there will be no need to assume and test possibilities on unknowns) and can be solved with a brute-force approach."""

def sudoku(puzzle):
    """return the solved puzzle as a 2d array of 9 x 9"""
    def getSquareValues(puzzle, line, column):
        e = line - line%3
        f = column - column%3
        squareVals = puzzle[e][f:f+3] + puzzle[e+1][f:f+3] + puzzle[e+2][f:f+3]
        return squareVals
        
    def getColumnValues(puzzle, column):
        columnVals = []
        for e in range(9):
            columnVals.append(puzzle[e][column])
        return columnVals
        
    def validSolution(puzzle):
        for e in range(9):
            if sum(puzzle[e]) != 45 or sum(getColumnValues(puzzle, e)) != 45:
                return False
        for p in range(0, 9, 3):
            for r in range(0, 9, 3):
                if sum(getSquareValues(puzzle, line, column)) != 45:
                    return False  
        return True      
        
    for line in range(9):
        if sum(puzzle[line]) != 45:
            for column in range(9):
                result = []
                if puzzle[line][column] == 0:
                    for digit in range(1,10):
                        if not digit in puzzle[line] and not digit in getSquareValues(puzzle, line, column) and not digit in getColumnValues(puzzle, column):
                            result.append(digit)
                    if len(result) == 1:
                        puzzle[line][column] = result[0]
    
    if validSolution(puzzle):
        return puzzle
    else:
        return sudoku(puzzle)