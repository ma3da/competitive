build:
	g++ -o run_cpp c_main.cxx -Wall
	./run_cpp

run:
	./run_cpp

clear_c:
	if [ -f c_main.cxx ]; then mv c_main.cxx .old; fi
	cp tpl.cxx c_main.cxx

clear_py:
	if [ -f py_main.py ]; then mv py_main.py .old; fi
	cp tpl.py py_main.py
