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
TEST = test/
TEST1 = test1.py
TEST2 = test2.py



$(TARGET): $(T)M.o $(T)CW.o $(T)CL.o $(T)CHW.o $(T)C.o $(T)CM.o 
	$(PY) $(T)M.o
	$(PY) $(T)CW.o
	$(PY) $(T)CL.o
	$(PY) $(T)CHW.o
	$(PY) $(T)C.o
	$(PY) $(T)CM.o


M: $(PY) $(SRC)$(M)
	$(PY) $(SRC)$(M)
CW: $(PY) $(SRC)$(CW)
	$(PY) $(SRC)$(CW)
CL: $(PY) $(SRC)$(CL)
	$(PY) $(SRC)$(CL)
CHW: $(PY) $(SRC)$(CHW)
	$(PY) $(SRC)$(CHW)
C: $(PY) $(SRC)$(C)
	$(PY) $(SRC)$(C)
CM: $(PY) $(SRC)$(CM)
	$(PY) $(SRC)$(CM)
	




test: $(TEST)$(TEST1) $(TEST)$(TEST2)
	$(PY) $(TEST)$(TEST1)
	$(PY) $(TEST)$(TEST2)



.PHONY: all test clean

clean:
	rm $(TARGET) *.o

