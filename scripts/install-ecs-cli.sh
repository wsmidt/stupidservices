#!/bin/bash -e

OS=$1

if [ -x "$(command -v ecs-cli)" ]; then
  echo 'ecs-cli already installed.'
  echo 'skipping...'
  exit 0
fi

case $OS in
  OSX|OSx|osx|osX|MACOS|MACos|macOS|macos|poop)
  sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-darwin-amd64-latest
  ;;
  LINUX|Linux|linux)
  sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
  ;;
  WINDOWS|Windows|windows)
  echo "no."
  exit 1
  ;;
  *)
  echo "Error: Unknown OS: $OS"
  echo "Usage: $0 <OS>"
  echo "OS Options: osx, linux"
  exit 1
  ;;
esac

sudo chmod +x /usr/local/bin/ecs-cli
ecs-cli --version
