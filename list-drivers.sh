#/bin/bash
lspci -v | grep --color=auto "Kernel driver in use:"

#Basic listing of the drivers using lspci, coloring to differentiate driver from previous words quickly
