#bin/bash
DATE		=$(date +%Y-%m)
DATETIME	=$(date +%Y-%m-%d-%T)
mkdir -p ~/Images/Screenshots/$DATE
maim -s > ~/Images/Screenshots/$DATE/$DATETIME.select.png
xclip -selection clipboard -t image/png < ~/Images/Screenshots/$DATE/$DATETIME.select.png
