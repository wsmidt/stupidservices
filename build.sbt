import sbt._

lazy val echo = project.in(file("echo"))

lazy val root = project.in(file("."))
  .settings(sourcesInBase := false)
  .aggregate(echo)
