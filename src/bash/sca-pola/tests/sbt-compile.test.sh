# src/bash/sca-pola/funcs/sbt-compile.test.sh

# v1.0.9
# ---------------------------------------------------------
# cat doc/txt/sca-pola/tests/sbt-compile.test.txt
# ---------------------------------------------------------
doTestSbtCompile(){

	doLog "DEBUG START doTestSbtCompile"
	
	sleep "$sleep_interval"
   src/bash/sca-pola/sca-pola.sh -a sbt-compile

   export exit_code=$?
	sleep "$sleep_interval"
   test $exit_code -ne 0 && return

	doLog "DEBUG STOP  doTestSbtCompile"
}
# eof func doTestSbtCompile


# eof file: src/bash/sca-pola/funcs/sbt-compile.test.sh
