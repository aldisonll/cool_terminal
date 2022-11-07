cp .custom_bashrc_generator ~

FILE=~/../usr/etc/profile.d/mymotd.sh
if [ -f "$FILE" ]; then
    rm $FILEfi
echo "#!/bin/bash
bash .custom_bashrc_generator" >> $FILE

chmod +x $FILE
echo "Installed, please restart terminal"
