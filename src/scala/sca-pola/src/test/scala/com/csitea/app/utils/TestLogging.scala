package com.csitea.utils

import org.scalatest.{BeforeAndAfterAll, FunSuite}

class TestLogging extends FunSuite with BeforeAndAfterAll {

  val KEYSPACE = "logkeyspace"

  override def beforeAll = {

    super.beforeAll

  }

  test("""
      |  As a Developer I wanto be able to interpolate variables into the msgs
    """.stripMargin) {

    val msgToVerify = "Pixeling Configuration error: the minimun frequency should be " +
      "within the 1 and the 2 range"

  }

}
