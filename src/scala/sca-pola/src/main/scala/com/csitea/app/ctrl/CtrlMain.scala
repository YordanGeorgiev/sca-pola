package com.csitea.app.ctrl

import com.csitea.app.utils.Initiator

/**
  * responsible for the main loop
  */
class CtrlMain {

  var appConfig: Map[String, String] = _

  def doInitializeAppConfig(): Map[String, String] = {

    val objInitiator = new Initiator()

    Map("ConfDir" -> objInitiator.ConfDir,
        "DataDir" -> objInitiator.DataDir,
        "run-unit" -> objInitiator.run_unit)
  }

  def run(): Unit = {
    appConfig = this.doInitializeAppConfig()
  }
}
