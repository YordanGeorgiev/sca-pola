package com.csitea.app.io.in

import com.csitea.app.utils.Initiator

/**
  * responsible for reading the models configuration files
  *
  */
case class RdrConfig(appConfig: Map[String, String]) {

  /**
    * read the configuration model from the model configuration files
    */
  def doReadConfModel(): Unit = {}

}
//eof class Configurator
