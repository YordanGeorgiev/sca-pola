# src/bash/sca-pola/funcs/sbt-test.func.sh

# v0.0.3
# ---------------------------------------------------------
# cat doc/txt/sca-pola/funcs/sbt-test.func.txt
# ---------------------------------------------------------
doSbtTest(){

	doLog "DEBUG START doSbtTest"
	
	# and clear the screen
	printf "\033[2J";printf "\033[0;0H"

	cd $product_instance_dir/src/scala/$run_unit
	doLog "INFO running sbt test"
	sbt test
	ret=$?
	test $ret -ne 0 && sleep 1 && doExit 4 "Scala syntax error" ; 
	cd $product_instance_dir
	
	sleep "$sleep_interval"

	doLog "DEBUG STOP  doSbtTest"
}
# eof func doSbtTest


# eof file: src/bash/sca-pola/funcs/sbt-test.func.sh
