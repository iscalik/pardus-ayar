#!/bin/sh
# Part of pardus-ayar http://github.com/iscalik/pardus-ayar
#
# See LICENSE file for copyright and license details

# Should be installed to /etc/profile.d/pardus-ayar.sh to force pardus-ayar 
# to run at initial login

# You may also want to set automatic login in /etc/inittab on tty1 by adding a 
# line such as:
# 1:2345:respawn:/bin/login -f root tty1 </dev/tty1 >/dev/tty1 2>&1 # RPICFG_TO_DISABLE

if [ $(id -u) -ne 0 ]; then
  printf "\nNOT: Tam olarak yapılandırılmadı. 'sudo pardus-ayar' çalıştırın.\n\n"
else
  pardus-ayar
  exec login -f root
fi
