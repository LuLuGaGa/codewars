"""Sudoku Solution Validator Write a function validSolution that accepts a 2D array representing a Sudoku board,
and returns true if it is a valid solution, or false otherwise.
The cells of the sudoku board may also contain 0's, which will represent empty cells.
Boards containing one or more zeroes are considered to be invalid solutions."""

def validSolution(board):
    
    def CheckVertical(board, e):
        result = 0
        for m in range(9):
            if board[m][e] == 0:
                return False
            else:
                result += board[m][e]
        return result == 45
        
    for e in range(9):
        if sum(board[e]) != 45 or not CheckVertical(board, e):
            return False
            
    for p in range(0, 9, 3):
        for r in range(0, 9, 3):
            if board[p][r] + board[p][r+1] + board[p][r+2] +board[p+1][r] + board[p+1][r+1] + board[p+1][r+2] +board[p+2][r] + board[p+2][r+1] + board[p+2][r+2] != 45:
                return False 
    return True