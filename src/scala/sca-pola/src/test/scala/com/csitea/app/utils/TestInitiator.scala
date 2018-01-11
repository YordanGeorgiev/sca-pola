package com.csitea.utils

import com.csitea.app.utils.Initiator
import org.scalatest.{BeforeAndAfterAll, FunSuite}

class TestInitiator extends FunSuite with BeforeAndAfterAll {

  override def beforeAll = {
    val arr = System.getProperty("user.dir").split("/")

    val productInstanceDirToVerify =
      arr.slice(0, (arr.length - 3)).mkString("/")

    System.setProperty("product_instance_dir_chk", productInstanceDirToVerify)
  }

  test(
    " As a Developer I want to ensure that the Initiator is aware of the scala product " +
      " instance dir  it starts from : ") {

    val objInitiator = new Initiator()
    val productInstanceDirToVerify =
      System.getProperty("product_instance_dir_chk")
    println("got: " + objInitiator.ProductInstanceDir)
    println("chk: " + productInstanceDirToVerify)
    assert(objInitiator.ProductInstanceDir equals productInstanceDirToVerify)
  }

  test(
    " As a Developer I want to ensure that the Initiator can build the configuration dir: " +
      "product_instance_dir + /cnf") {

    // or how-to get the project name from the scala code
    val pckg = getClass.getPackage
    val run_unit = pckg.getImplementationTitle

    val objInitiator = new Initiator()
    val confDirToVerify = System.getProperty("product_instance_dir_chk") +
      "/src/scala/sca-pola/cnf"

    println("objInitiator.ConfDir : " + objInitiator.ConfDir + " == ")
    println("confDirToVerify: " + confDirToVerify)

    assert(objInitiator.ConfDir equals confDirToVerify)
  }

  test(
    " As a Developer I want to ensure that the Initiator can build the product instance data " +
      "dir: product_instance_dir/dat/sca-pola") {

    val objInitiator = new Initiator()
    val dataDirToVerify = System.getProperty("product_instance_dir_chk") + "/dat/sca-pola"

    println("objInitiator.DataDir : " + objInitiator.DataDir + " == ")
    println("dataDirToVerify: " + dataDirToVerify)

    assert(objInitiator.DataDir equals dataDirToVerify)
  }

  test(
    " As a Developer I want to ensure that the Initiator sets the product_instanc_dir" +
      " to the System ") {

    val objInitiator = new Initiator()
    val productInstanceDirToVerify =
      System.getProperty("product_instance_dir_chk")

    println(
      "product_instance_dir System property : " +
        System.getProperty("product_instance_dir") + " == ")
    println(
      "product_instance_dir_chk: " + System.getProperty(
        "product_instance_dir_chk"))

    assert(
      productInstanceDirToVerify equals System.getProperty(
        "product_instance_dir"))
  }

}
