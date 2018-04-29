import sbt._
import Dependencies._

name := "echo"
version := "0.0.0"

libraryDependencies += scalaTest % Test

enablePlugins(JavaAppPackaging, DockerPlugin)
packageName in Docker := packageName.value
version in Docker := version.value

dockerBaseImage := "openjdk"

dockerRepository := Some("dockeruser")

dockerExposedPorts := Seq(9000)

dockerExposedVolumes := Seq("./opt/docker/logs")
