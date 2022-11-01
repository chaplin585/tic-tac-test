import unittest
def can_win(a1,a2,a3,smb):
    res = False
    if a1 == smb and a2 == smb and a3 == ' ':
        a3 = 'O'
        res = True
    if a1 == smb and a2 == ' ' and a3 == smb:
        a2 = 'O'
        res = True
    if a1 == ' ' and a2 == smb and a3 == smb:
        a1 = 'O'
        res = True
    return res

class test1(unittest.TestCase):
    def test(self):
        self.assertEqual(can_win('O',' ','O','O'),True)
class test2(unittest.TestCase):
    def test(self):
        self.assertEqual(can_win('X',' ','O','O'),False)
class test3(unittest.TestCase):
    def test(self):
        self.assertEqual(can_win('O','O',' ','O'),True)
class test4(unittest.TestCase):
    def test(self):
        self.assertEqual(can_win('O',' ','X','O'),False)

if __name__=='__main__':
    unittest.main()