#!/bin/bash 
#file: src/bash/sca-pola/funcs/scala/sbt-build.func.sh

umask 022    ;

# print the commands
# set -x
# print each input line as well
# set -v
# exit the script if any statement returns a non-true return value. gotcha !!!
# set -e
trap 'doExit $LINENO $BASH_COMMAND; exit' SIGHUP SIGINT SIGQUIT



#v0.1.8
#------------------------------------------------------------------------------
# checks the perl syntax of the cgi perl modules
#------------------------------------------------------------------------------
doSbtCleanCompile(){

	test -z "$run_unit" && run_unit=$wrap_name
	# and clear the screen
	printf "\033[2J";printf "\033[0;0H"
	set +x	
	doLog "INFO == START == doSbtCleanCompile"
	cd $product_instance_dir

	cd $product_instance_dir/src/scala/$run_unit
	doLog "INFO running sbt clean"
	sbt clean

	doLog "INFO running sbt compile"
	sbt compile
	ret=$?
	test $ret -ne 0 && sleep 1 && doExit 4 "Scala syntax error" ; 
	cd $product_instance_dir


	test $ret -eq 0 && doLog "INFO == STOP  == doSbtCleanCompile NO Errors !!!"
}
#eof func doSbtCleanCompile 


#
#----------------------------------------------------------
# Purpose:
# to compile a sbt project 
#----------------------------------------------------------
#
#----------------------------------------------------------
# Requirements: bash , perl , ctags
#
#----------------------------------------------------------
#
#----------------------------------------------------------
#  EXIT CODES
# 0 --- Successfull completion
# 2 --- Invalid options 
# 3 --- deployment file not found
#----------------------------------------------------------
#
# VersionHistory:
#------------------------------------------------------------------------------
# 1.0.0 -- 2016-09-11 11:58:34 -- ysg -- init
#
#eof file: src/bash/sca-pola/sca-pola-incl-perl.sh v1.0.0
