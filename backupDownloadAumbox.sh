# Script to backyp and synchronize Download Transmission's folder

#! /user/bin/ksh
rsync -Pv -e 'ssh -p 1988' valentinbesse@aumbox.net:/home/valentinbesse/test /home/aumbox/
