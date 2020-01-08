# Script to copy backupDownloadAumbow u

#! /user/bin/ksh


LOGFILE=/var/log/cp_backupDownloadAumbox.log
ERRORLOGFILE=/var/log/cp_backupDownloadAumbox.error.log
SHELLSCRIPT=backupDownloadAumbox.sh

if [ ! -f "$LOGFILE" ]; then
    touch $LOGFILE
fi

if [ ! -f "$ERRORLOGFILE" ]; then
    touch $ERRORLOGFILE
fi

cp /home/vbesse/Github/backupDownloadAumbox/backupDownloadAumbox.sh /usr/local/bin/ 1>>$LOGFILE 2>>$ERRORLOGFILE
chmod u+x /usr/local/bin/backupDownloadAumbox.sh  1>>$LOGFILE 2>>$ERRORLOGFILE
