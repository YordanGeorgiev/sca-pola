# src/bash/sca-pola/funcs/run-sbt.test.sh

# v1.0.9
# ---------------------------------------------------------
# cat doc/txt/sca-pola/tests/run-sbt.test.txt
# ---------------------------------------------------------
doTestRunSbt(){

	doLog "DEBUG START doTestRunSbt"

   # Action !!!
   bash src/bash/sca-pola/sca-pola.sh -a run-sbt
   export exit_code=$?

	doLog "run-sbt action exit_code: $exit_code "
   sleep "$sleep_interval"

   test $exit_code -ne 0 && return
	doLog "DEBUG STOP  doTestRunSbt"
}
# eof func doTestRunSbt


# eof file: src/bash/sca-pola/funcs/run-sbt.test.sh
