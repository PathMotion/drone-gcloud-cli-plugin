#! /bin/bash

[ -z "$PLUGIN_CMD" ] && echo "Please set the \"cmd\" parameter" && exit 1;
[ -z "$PLUGIN_PROJECT" ] && echo "Please set the \"project\" parameter" && exit 1;

sh /bin/plugin/auth.sh && \

set -o xtrace && \

gcloud config set project $PLUGIN_PROJECT && \

eval $PLUGIN_CMD;