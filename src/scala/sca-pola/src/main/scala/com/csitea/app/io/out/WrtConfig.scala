package com.csitea.app.io.out

/**
  * responsible for reading the models configuration files
  *
  */
case class WrtConfig(appConfig: Map[String, String]) {

  /**
    * generate model configuration files
    */
  def doWriteConfModel(): Unit = {}

}

//eof class Configurator
