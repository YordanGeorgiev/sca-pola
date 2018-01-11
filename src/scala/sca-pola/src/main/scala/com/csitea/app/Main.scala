package com.csitea.app

import com.csitea.app.ctrl.CtrlMain

/**
  * the main entry point of the scala app
  */
object Main extends App {

  println("START MAIN")
  val objMain = new CtrlMain()
  objMain.run()

  // val userDir = System.getProperty("user.dir")
  // println("user.dir: \n" + userDir)

  // val currentDirectory = new java.io.File(".").getCanonicalPath
  // println("java.io.cannonicalPath: \n" + currentDirectory)

  println("STOP  MAIN")

}
