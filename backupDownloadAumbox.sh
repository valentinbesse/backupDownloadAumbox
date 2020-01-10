# Script to backyp and synchronize Download Transmission's folder

#! /user/bin/ksh

LOGFILE=/var/log/backupDownloadAumbox.log
ERRORLOGFILE=/var/log/backDownloadAumbox.error.log

if [ ! -f "$LOGFILE" ] ; then
    touch $LOGFILE
fi

if [ ! -f "$ERRORLOGFILE" ] ; then
    touch $ERRORLOGFILE
fi

rsync -av --progress -e 'ssh -p 1988' valentinbesse@aumbox.net:/home/valentinbesse/Downloads/ /home/aumbox/Download/ 1>>$LOGFILE 2>>$ERRORLOGFILE
