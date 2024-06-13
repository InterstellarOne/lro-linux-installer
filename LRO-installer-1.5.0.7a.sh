#!/bin/bash

mkdir ~/.local/share/lroverhaul
cd ~/.local/share/lroverhaul
wget https://github.com/LunaKampling/LROverhaul/files/15278421/1.5.0.7a.zip
wget -O https://raw.githubusercontent.com/LunaKampling/LROverhaul/main/src/Resources/icon.ico
unzip -o 1.5.0.7a.zip
rm 1.5.0.7a.zip
cd ~/.local/share/applications/
wget -nc https://raw.githubusercontent.com/InterstellarOne/lro-temp/main/lroverhaul.desktop
sed -i "s/*/$USER/g" lroverhaul.desktop
echo Line Rider Overhaul installed!
mono ~/.local/share/lroverhaul/linerider.exe
