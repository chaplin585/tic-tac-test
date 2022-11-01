
from check_win import check_win
from computer_move import computer_move
def clickk(row, col,field, game_run,cross_count):
    if game_run and field[row][col]['text'] == ' ':
        field[row][col]['text'] = 'X'
        
        cross_count += 1
        check_win('X',field)
        if game_run and cross_count < 5:
            computer_move(field)
            check_win('O',field)
            return