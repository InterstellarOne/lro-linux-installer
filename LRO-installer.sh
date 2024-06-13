#!/bin/bash

mkdir ~/.local/share/lroverhaul
cd ~/.local/share/lroverhaul
wget https://github.com/LunaKampling/LROverhaul/files/15278421/1.5.0.7a.zip
unzip 1.5.0.7a.zip
rm 1.5.0.7a.zip
wget https://raw.githubusercontent.com/InterstellarOne/lro-temp/main/icon.png
cd ~/.local/share/applications/
wget https://raw.githubusercontent.com/InterstellarOne/lro-temp/main/lroverhaul.desktop
sed -i "s/*/$USER/g" lroverhaul.desktop
echo Line Rider Overhaul installed!
mono ~/.local/share/lroverhaul/linerider.exe
