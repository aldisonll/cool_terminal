cp .custom_bashrc_generator ~

FILE=~/../usr/etc/profile.d/mymotd.sh
if [ -f "$FILE" ]; then
    rm $FILE
fi

apt-get install neofetch &> /dev/null
if [ $? -eq 0 ]; then
    neofetch_command="bash neofetch"
fi

echo "#!/bin/bash
bash .custom_bashrc_generator
$neofetch_command" >> $FILE

chmod +x $FILE
echo "Installed, please restart terminal"
