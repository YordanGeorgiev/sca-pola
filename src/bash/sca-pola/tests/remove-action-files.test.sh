# src/bash/sca-pola/funcs/remove-action-files.test.sh

# v1.1.2
# ---------------------------------------------------------
# adds first an action to remove 
# generates all the aciton files (( it will add this new ) 
# action to remove
# and tests the actual removal at the end 
# ---------------------------------------------------------
doTestRemoveActionFiles(){

	doLog "DEBUG START doTestRemoveActionFiles"

	doSpecRemoveActionFiles
	sleep "$sleep_interval"
	printf "\033[2J";printf "\033[0;0H"

	doHelpRemoveActionFiles
	sleep "$sleep_interval"
	printf "\033[2J";printf "\033[0;0H"
	
	cat doc/txt/sca-pola/tests/remove-action-files.test.txt
	sleep "$sleep_interval"
	printf "\033[2J";printf "\033[0;0H"
	
	# add an action to remove
	found=$(grep -c action-to-remove src/bash/sca-pola/tests/rem-sca-pola-actions.lst)
	test $found -eq 0 && \
	echo action-to-remove >> src/bash/sca-pola/tests/rem-sca-pola-actions.lst
	found=0
	
	found=$(grep -c action-to-remove src/bash/sca-pola/tests/all-sca-pola-tests.lst)
	test $found -eq 0 && \
		echo action-to-remove >> src/bash/sca-pola/tests/all-sca-pola-tests.lst

	# now generate the code files for this action to remove
	bash src/bash/sca-pola/sca-pola.sh -a generate-action-files		
	sleep "$sleep_interval"
	printf "\033[2J";printf "\033[0;0H"

	# and test the actual removal of the action 	
	bash src/bash/sca-pola/sca-pola.sh -a remove-action-files		
	doLog "DEBUG STOP  doTestRemoveActionFiles"

	sleep "$sleep_interval"
	printf "\033[2J";printf "\033[0;0H"
}
# eof func doTestRemoveActionFiles


# eof file: src/bash/sca-pola/funcs/remove-action-files.test.sh
