# src/bash/sca-pola/funcs/run-sbt.func.sh

# v1.0.9
# ---------------------------------------------------------
# cat doc/txt/sca-pola/funcs/run-sbt.func.txt
# ---------------------------------------------------------
doRunSbt(){

	doLog "DEBUG START doRunSbt"
	
	
	# and clear the screen
	printf "\033[2J";printf "\033[0;0H"
	set +x	

	cd $product_instance_dir/src/scala/$run_unit
	doLog "INFO running: sbt run"
	sbt run

	ret=$?
	test $ret -ne 0 && sleep 1 && doExit 4 "Scala run error" ; 

	doLog "INFO check also the scala log file"$(find $product_instance_dir/dat/log/scala -name '*.log')

	test $ret -eq 0 && doLog "INFO == STOP  == sbt-run NO Errors !!!"
	cd $product_instance_dir

	doLog "DEBUG STOP  doRunSbt"
}
# eof func doRunSbt


# eof file: src/bash/sca-pola/funcs/run-sbt.func.sh
