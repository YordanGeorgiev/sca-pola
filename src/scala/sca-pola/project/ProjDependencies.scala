import sbt._

/**
  * segregates project dependancies management chk: libraryDependencies ++= in build.sbt
  */
object ProjDependencies {

  val logLibs = Seq(
    "org.apache.logging.log4j" % "log4j-api" % "2.10.0",
    "org.apache.logging.log4j" % "log4j-core" % "2.10.0",
    "ch.qos.logback" % "logback-classic" % "1.1.7",
    "commons-lang" % "commons-lang" % "2.6"
  )

  val configLibs = Seq(
    "com.typesafe" % "config" % "1.2.1",
    "com.github.pureconfig" %% "pureconfig" % "0.7.2",
    ("eu.timepit" %% "refined-pureconfig" % "0.8.2")
      .exclude("org.scala-lang", "scala-reflect")
      .exclude("org.scala-lang", "scala-compiler")
  )

  val scalaTestLibs = Seq(
    "org.scalatest" %% "scalatest" % "3.0.4" % "test"
  )

}