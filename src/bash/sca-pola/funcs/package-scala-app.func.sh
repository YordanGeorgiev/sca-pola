# src/bash/sca-pola/funcs/package-scala-app.func.sh

# v1.0.9
# ---------------------------------------------------------
# cat doc/txt/sca-pola/funcs/package-scala-app.func.txt
# ---------------------------------------------------------
doPackageScalaApp(){

	doLog "DEBUG START doPackageScalaApp"
	
	printf "\033[2J";printf "\033[0;0H"
	doLog "INFO == START == doSbtstage"

	#remove all the autosplit.ix files 
	cd $product_instance_dir/src/scala/$run_unit
	doLog " INFO sbt clean-compile"
   sbt clean compile
	doLog " INFO Generate API documentation"
   sbt doc              
   doLog " INFO Produce the main artifact, such as a binary jar"
   sbt package
   doLog " INFO Produce a main artifact, such as a binary jar"
   sbt packageBin       
   doLog " INFO Produce a documentation artifact, such as a jar containing API"
   sbt packageDoc       
   doLog " INFO Produces a source artifact, such as a jar containing sources"
   sbt packageSrc       
	ret=$?
	test $ret -ne 0 && sleep 1 && doExit 4 "Scala syntax error" ; 
	cd $product_instance_dir
	
	sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doPackageScalaApp"
}
# eof func doPackageScalaApp


# eof file: src/bash/sca-pola/funcs/package-scala-app.func.sh
