# src/bash/sca-pola/funcs/sbt-clean-compile.test.sh

# v1.0.9
# ---------------------------------------------------------
# cat doc/txt/sca-pola/tests/sbt-clean-compile.test.txt
# ---------------------------------------------------------
doTestSbtCleanCompile(){

	doLog "DEBUG START doTestSbtCleanCompile"
	
	
	sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
   src/bash/sca-pola/sca-pola.sh -a sbt-clean-compile

   export exit_code=$?
   sleep "$sleep_interval"
   test $exit_code -ne 0 && return

	doLog "DEBUG STOP  doTestSbtCleanCompile"
}
# eof func doTestSbtCleanCompile


# eof file: src/bash/sca-pola/funcs/sbt-clean-compile.test.sh
