#! /bin/bash

[ -z "$PLUGIN_CMD" ] && echo "Please set the \"cmd\" parameter" && exit 1;

sh /bin/plugin/auth.sh && \

set -o xtrace && \

eval $PLUGIN_CMD;