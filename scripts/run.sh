#! /bin/bash

[ -z "$PLUGIN_COMMAND" ] && echo "Please set the \"command\" parameter" && exit 1;

sh /bin/plugin/auth.sh && \

set -o xtrace && \

eval $PLUGIN_COMMAND;