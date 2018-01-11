// file: sfw/scala/sca-pola/build.sbt
import ProjDependencies._

val projScaPola: Project = project
  .in(file("."))
  .settings(
    name := "sca-pola",
    version := "0.0.3",
    organization := "com.csitea",
    libraryDependencies ++= logLibs ++ configLibs ++ scalaTestLibs
  )
  .enablePlugins(JavaAppPackaging)

// src: http://www.scala-sbt.org/sbt-native-packager/gettingstarted.html
//enablePlugins(JavaAppPackaging)

// src: http://stackoverflow.com/a/25534129/65706
resolvers ++= Seq(
  "Typesafe Releases" at "http://repo.typesafe.com/typesafe/releases/")

parallelExecution in ThisBuild := true

scalafmtVersion in ThisBuild := "1.1.0"

scalafmtOnCompile in ThisBuild := true
/**
  * Purpose :
  * the sbt build file for the scala polylanguage api msg project
  */

// eof file: sfw/scala/sca-pola/build.sbt
