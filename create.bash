#!/bin/bash

LIBS=(
  "docs"
  "ign-cmake"
  "ign-common"
  "ign-fuel-tools"
  "ign-gazebo"
  "ign-gui"
  "ign-launch"
  "ign-math"
  "ign-msgs"
  "ign-physics"
  "ign-plugin"
  "ign-rendering"
  "ign-sensors"
  "ign-tools-dev"
  "ign-transport"
  "ign-utils"
  "ign_ros2_control"
  "ros_ign"
  "sdformat"
)

for LIB in "${LIBS[@]}"
do
  ORG="ignitionrobotics"
  if [[ $LIB == "sdformat" ]]; then
    ORG="osrf"
  fi

  ./create-labels -o $ORG -r $LIB -t $GITHUB_TOKEN


  echo "Check https://github.com/$ORG/$LIB/labels/"
  read -r -n1

done
