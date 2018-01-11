package com.csitea.app.utils

object TypeConverter {

  def toInt(x: Any): Option[Int] = x match {
    case i: Int    => Some(i)
    case s: String => Some(Integer.parseInt(s.trim))
    case None =>
      throw new IllegalArgumentException(
        "null passed to the TypeConverter.toInt"
      )
    case _ =>
      throw new IllegalArgumentException(
        x.toString + "cannot be converted to Int")
  }
}
