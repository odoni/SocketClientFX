#!/bin/bash

#
# Move to the directory containing this script so we can source the env.sh
# properties that follow
#
cd `dirname $0`

#
# Common properties shared by scripts
#
. env.sh

CMD="$JPACKAGE_HOME/bin/jpackage create-installer $VERBOSE_OPTION --installer-type $INSTALLER_TYPE --output $INSTALLER --app-image $APPIMAGE/$LAUNCHER --name $LAUNCHER"
exec_cmd $CMD