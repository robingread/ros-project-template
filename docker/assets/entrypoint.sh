#! /bin/bash

source /opt/ros/${ROS_DISTRO}/setup.sh

# Source the overlay workspace, if built
if [ -f /project_ws/install/local_setup.bash ]
then
  source /project_ws/install/local_setup.bash
fi

export PROJECT_WS=/project_ws
export COLCON_LOG_PATH=${PROJECT_WS}/.colcon/log

# Execute the command passed into this entrypoint
exec "$@"
