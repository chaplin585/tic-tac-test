TARGET = tic-tac-toe
PY = python
SRC = src/
M = main.py 
CW = can_win.py
CL = check_line.py
CHW = check_win.py
C = click.py
CM = computer_move.py
T = thirdparty\

TEST = test\
TEST1 = test1.py
TEST2 = test2.py



$(TARGET): M CW CL CHW C CM 
	MAIN
	CW
	CL
	CHW
	C
	CM


MAIN:$(SRC)$(M)
	$(PY) $(SRC)$(M)
CW: $(SRC)$(CW)
	$(PY) $(SRC)$(CW)
CL: $(SRC)$(CL)
	$(PY) $(SRC)$(CL)
CHW:$(SRC)$(CHW)
	$(PY) $(SRC)$(CHW)
C:$(SRC)$(C)
	$(PY) $(SRC)$(C)
CM:$(SRC)$(CM)
	$(PY) $(SRC)$(CM)
	




test: $(TEST)$(TEST1) $(TEST)$(TEST2)
	$(PY) $(TEST)$(TEST1)
	$(PY) $(TEST)$(TEST2)



.PHONY: all test clean

clean:
	rm $(TARGET) *.o

