#!/bin/bash
# starting source: https://askubuntu.com/questions/527166/how-to-set-subl-protocol-handler-with-unity

cp "devtools-ide.desktop" "/usr/share/applications/devtools-ide.desktop"
cp "ide_launch.sh" "/bin/ide_launch.sh"
chmod a+x "/bin/ide_launch.sh"
update-desktop-database
