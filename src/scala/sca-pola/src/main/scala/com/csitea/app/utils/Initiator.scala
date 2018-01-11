package com.csitea.app.utils

/**
  *
  * Encapsulates the app global configuration logic
  */
case class Initiator() {

  val scalaProjKickOffDir = new java.io.File(".").getCanonicalPath

  val run_unit = "sca-pola"

  val ProductInstanceDir: String = getProductInstanceDir()

  System.setProperty("product_instance_dir", ProductInstanceDir);

  val ConfDir = scalaProjKickOffDir + "/cnf"
  val DataDir = ProductInstanceDir + "/dat/" + run_unit

  /**
    * Resolve the product version dir hosting one or many scala projects by naming convention
    */
  def getProductInstanceDir(): String = {

    val arr = scalaProjKickOffDir.split("/")

    arr
      .slice(0, (arr.length) - 3)
      .mkString("/")
  }

}
//eof class Initiator
