import unittest

def check_line(a1,a2,a3,smb):
        
        if a1 == smb and a2 == smb and a3 == smb:            
            global game_run
            game_run = False
            return game_run
class Test1(unittest.TestCase):    
    def test(self):
        self.assertEqual(check_line('X','X','X','X'),False)
class Test2(unittest.TestCase):    
    def test(self):
        self.assertEqual(check_line('X','X','X','O'),None)
class Test3(unittest.TestCase):    
    def test(self):
        self.assertEqual(check_line('O','O','X','O'),None)
class Test4(unittest.TestCase):    
    def test(self):
        self.assertEqual(check_line('X','X','O','O'),None)


if __name__=='__main__':
    unittest.main()