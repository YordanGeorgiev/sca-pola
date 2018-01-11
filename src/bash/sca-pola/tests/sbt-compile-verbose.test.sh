# src/bash/sca-pola/funcs/sbt-compile-verbose.test.sh

# v0.0.3
# ---------------------------------------------------------
# cat doc/txt/sca-pola/tests/sbt-compile-verbose.test.txt
# ---------------------------------------------------------
doTestSbtCompileVerbose(){

	doLog "DEBUG START doTestSbtCompileVerbose"
	
	sleep "$sleep_interval"
	# Action !!!
   bash src/bash/sca-pola/sca-pola.sh   -a sbt-compile-verbose

   export exit_code=$?
   sleep "$sleep_interval"
   test $exit_code -ne 0 && return

	doLog "DEBUG STOP  doTestSbtCompileVerbose"
}
# eof func doTestSbtCompileVerbose


# eof file: src/bash/sca-pola/funcs/sbt-compile-verbose.test.sh
