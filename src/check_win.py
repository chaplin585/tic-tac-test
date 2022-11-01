from check_line import check_line

def check_win(smb,field):
    for n in range(3):
        check_line(field[n][0], field[n][1], field[n][2], smb)
        check_line(field[0][n], field[1][n], field[2][n], smb)
        check_line(field[0][0], field[1][1], field[2][2], smb)
        check_line(field[2][0], field[1][1], field[0][2], smb)
        return