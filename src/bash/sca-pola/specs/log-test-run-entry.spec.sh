# src/bash/sca-pola/funcs/log-test-run-entry.spec.sh

# v1.0.0
# ---------------------------------------------------------
# todo: add doSpecLogTestRunEntry comments ...
# ---------------------------------------------------------
doSpecLogTestRunEntry(){

	doLog "DEBUG START doSpecLogTestRunEntry"
	
	cat doc/txt/sca-pola/specs/log-test-run-entry.spec.txt
	
	sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecLogTestRunEntry"
}
# eof func doSpecLogTestRunEntry


# eof file: src/bash/sca-pola/funcs/log-test-run-entry.spec.sh
