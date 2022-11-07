cp .custom_bashrc_generator ~

FILE=~/../usr/etc/profile.d/mymotd.sh
if [ -f "$FILE" ]; then
    rm $FILE
fi
echo "#!/bin/bash
bash .custom_bashrc_generator" >> $FILE

chmod +x $FILE
echo "Installed, please restart terminal"
