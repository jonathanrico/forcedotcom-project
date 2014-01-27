#!/bin/bash
DEPLOY_ENV="$1"
TARGET_TO_RUN="$2"
#JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Home"
#ANT_HOME=${BUILD_TOOLS_HOME}"/ant/apache-ant-1.7.1"
#PATH=$JAVA_HOME/bin:$ANT_HOME/bin:$PATH

echo  "Env: ${DEPLOY_ENV}"
if [ -n "$DEPLOY_ENV" ]; then
	ant ${TARGET_TO_RUN} -Dbuild_props=${DEPLOY_ENV}-build.properties -DcheckOnly=false -f build.xml
else
	echo "Environment should be passed (local/main/patch/freeze/prod)"
fi