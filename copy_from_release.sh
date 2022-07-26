#!/bin/sh
# This script copies jar files from an Ignition release installation.
# The script must be run in the root directory of the
# ignition-79 repository. These are the jars that we compile against.
#
IGNITION=${IGNITION_HOME}/lib/core
REPO=${GIT_REPO}/ignition-80/lib
LIB=lib
#  ======================================= From Main ==================================
#
#set -x
cd ${IGNITION}/client
cp active-query-builder*.jar ${REPO}/active-query-builder.jar
cp client-api*.jar ${REPO}/client-api.jar
cp miglayout-core-*.jar ${REPO}/miglayout-core.jar
cp miglayout-swing-*.jar ${REPO}/miglayout-swing.jar
cd ${IGNITION}/common
cp common.jar ${REPO}/ignition-common.jar
cp ia-gson*.jar ${REPO}/ia-gson.jar
cp jfree*.jar ${REPO}/jfreechart.jar
cp jide-common*.jar ${REPO}/jide-common.jar
cp guava-26.0-jre.jar ${REPO}/guava.jar
cd ${IGNITION}/designer
cp designer*.jar ${REPO}/designer-api.jar
cp jide-action*.jar ${REPO}/jide-action.jar
cp jide-dock*.jar ${REPO}/jide-dock.jar
cd ${IGNITION}/gateway
cp gateway-8*.jar ${REPO}/gateway.jar
cp gateway-api*.jar ${REPO}/gateway-api.jar
cp javax.servlet-api*.jar ${REPO}/javax.servlet-api.jar
cp jetty-webapp*.jar ${REPO}/jetty-webpp.jar
cp metro*.jar ${REPO}/metro.jar
cp simple-orm*.jar ${REPO}/simple-orm.jar
cp wicket-core*.jar ${REPO}/wicket-core.jar
cp wicket-datetime*.jar ${REPO}/wicket-datetime.jar
cp wicket-extensions*.jar ${REPO}/wicket-extensions.jar
cp wicket-request*.jar ${REPO}/wicket-request.jar
cp wicket-util*.jar ${REPO}/wicket-util.jar

#  ======================================= From Modules ==================================
#
IGNITION=${IGNITION_HOME}/user-lib/modules
mkdir -p ${IGNITION}/tmp
cd ${IGNITION}/tmp
jar -xf "../SQL Bridge-module.modl"
cp sql-bridge-common-*.jar ${REPO}/sql-bridge-common-api.jar
cp sql-bridge-designer-*.jar ${REPO}/sql-bridge-designer-api.jar
cp sql-bridge-gateway-*.jar ${REPO}/sql-bridge-gateway.jar
jar -xf ../SFC-module.modl
cp sfc-client-*.jar ${REPO}/sfc-client-api.jar
cp sfc-common*.jar ${REPO}/sfc-common.jar
cp sfc-designer-*.jar ${REPO}/sfc-designer-api.jar
cp sfc-gateway-api*.jar ${REPO}/sfc-gateway-api.jar
cp sfc-gateway-5*.jar ${REPO}/sfc-gateway.jar
jar -xf ../Vision-module.modl
cp vision-client-*.jar ${REPO}/vision-client-api.jar
cp vision-common*.jar ${REPO}/vision-common.jar
cp vision-designer-*.jar ${REPO}/vision-designer-api.jar
cp vision-gateway*.jar ${REPO}/vision-gateway.jar
cd ..
rm -rf ${IGNITION}/tmp
echo "Complete"
