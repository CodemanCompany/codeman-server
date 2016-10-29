#!/usr/bin/env bash
#  ██████╗ ██████╗ ██████╗ ███████╗███╗   ███╗ █████╗ ███╗   ██╗
# ██╔════╝██╔═══██╗██╔══██╗██╔════╝████╗ ████║██╔══██╗████╗  ██║
# ██║     ██║   ██║██║  ██║█████╗  ██╔████╔██║███████║██╔██╗ ██║
# ██║     ██║   ██║██║  ██║██╔══╝  ██║╚██╔╝██║██╔══██║██║╚██╗██║
# ╚██████╗╚██████╔╝██████╔╝███████╗██║ ╚═╝ ██║██║  ██║██║ ╚████║
#  ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
# Description: Glassfish start/stop/restart
# Processname: glassfish

JAVA_HOME=[/usr/java/jdkversion]
export JAVA_HOME
PATH=$JAVA_HOME/bin:$PATH
export PATH
GLASSFISH_HOME=/opt/glassfish4/glassfish/
GLASSFISH_USER=glassfish

case $1 in
start)
	su $GLASSFISH_USER -c "$GLASSFISH_HOME/bin/asadmin start-domain"
;;
stop)
	su $GLASSFISH_USER -c "$GLASSFISH_HOME/bin/asadmin stop-domain"
;;
restart)
	su $GLASSFISH_USER -c "$GLASSFISH_HOME/bin/asadmin stop-domain"
	su $GLASSFISH_USER -c "$GLASSFISH_HOME/bin/asadmin start-domain"
;;
esac