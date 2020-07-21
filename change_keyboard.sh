#! /bin/bash

sudo cp "/usr/share/X11/xkb/symbols/us" "/usr/share/X11/xkb/symbols/us_backup-`date '+%Y%m%d'`"
sudo cp "/usr/share/X11/xkb/symbols/us" "./backups/us_backup-`date '+%Y%m%d'`"
sudo cp "/usr/share/X11/xkb/symbols/us" "./us"

read -p "Check changes and commit to git. Confirm with Y when ready. " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo cp "./us" "/usr/share/X11/xkb/symbols/us"
fi

