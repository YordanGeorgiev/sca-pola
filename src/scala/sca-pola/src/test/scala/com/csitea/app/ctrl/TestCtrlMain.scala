package com.csitea.app.ctrl

import org.scalatest.{BeforeAndAfterAll, FunSuite}

class TestCtrlMain extends FunSuite with BeforeAndAfterAll {

  override def beforeAll = {}

  test(
    " As a Developer I want the application to start from the main controller so that an global " +
      "application map with the configuration dir and the data dir will be available") {

    val objMain = new CtrlMain()
    val appConfig: Map[String, String] = objMain.doInitializeAppConfig()

    val run_unit = appConfig("run-unit")
    val ProductInstanceDir = System.getProperty("product_instance_dir")

    // the conf dir should be the run_unit_dir + main/resources
    val ConfDir = ProductInstanceDir + "/src/scala/sca-pola/cnf"
    // the data dir should be the product instance dir + data/ run_unit
    val DataDir = ProductInstanceDir + "/dat/" + run_unit

    val appConfigToChk =
      Map("ConfDir" -> ConfDir, "DataDir" -> DataDir, "run-unit" -> run_unit)

    println(appConfigToChk.toSeq.sorted)
    println(appConfig.toSeq.sorted)

    assert(appConfigToChk.toSeq.sorted equals appConfig.toSeq.sorted)
  }

}
