import sbt._
import Dependencies._

lazy val hello = project.in(file("."))

name := "hello"
version := "0.0.0"

libraryDependencies += scalaTest % Test


### Docker settings ###
enablePlugins(JavaAppPackaging, DockerPlugin)
packageName in Docker := packageName.value
version in Docker := version.value

dockerBaseImage := "openjdk"

dockerRepository := Some("dockeruser")

dockerExposedPorts := Seq(9000)

dockerExposedVolumes := Seq("./opt/docker/logs")
