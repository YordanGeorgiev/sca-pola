# src/bash/sca-pola/funcs/%act%.%deliverable_type%.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add %full_func% comments ...
# ---------------------------------------------------------
%full_func%(){

	doLog "DEBUG START %full_func%"
	
	cat doc/txt/sca-pola/%deliverable_type%s/%act%.%deliverable_type%.txt
	
	sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  %full_func%"
}
# eof func %full_func%


# eof file: src/bash/sca-pola/funcs/%act%.%deliverable_type%.sh
