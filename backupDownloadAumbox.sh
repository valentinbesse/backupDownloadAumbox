# Script to backyp and synchronize Download Transmission's folder

#! /user/bin/ksh

LOGFILE=/var/log/backupDownloadAumbox-$(date +%Y-%m-%d_%H:%M).log
ERRORLOGFILE=/var/log/backDownloadAumbox-$(date +%Y-%m-%d_%H:%M).error.log

echo "Start of backup process" > $LOGFILE
echo "Start of backup process" > $ERRORLOGFILE

rsync -av --progress -e 'ssh -p 1988' valentinbesse@aumbox.net:/home/valentinbesse/Downloads/ /home/aumbox/Download/ 1>>$LOGFILE 2>>$ERRORLOGFILE
