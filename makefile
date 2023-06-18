buildc:
	g++ -o run_cpp c_main.cxx -Wall
	./run_cpp

buildr:
	rustc -o run_rs rs_main.rs
	./run_rs

runc:
	./run_cpp

runr:
	./run_rs

clear_c:
	if [ -f c_main.cxx ]; then mv c_main.cxx .old; fi
	cp tpl.cxx c_main.cxx

clear_py:
	if [ -f py_main.py ]; then mv py_main.py .old; fi
	cp tpl.py py_main.py

clear_rs:
	if [ -f rs_main.rs ]; then mv rs_main.rs .old; fi
	cp tpl.rs rs_main.rs
