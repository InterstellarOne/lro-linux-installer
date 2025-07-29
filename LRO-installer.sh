#!/bin/bash

mkdir ~/.local/share/lroverhaul
cd ~/.local/share/lroverhaul
wget https://github.com/LunaKampling/LROverhaul/releases/download/1.5.0.8a/1.5.0.8-crossplatform.zip
wget https://raw.githubusercontent.com/InterstellarOne/lro-linux-installer/refs/heads/main/icon.png
unzip -o 1.5.0.8-crossplatform.zip
rm 1.5.0.8-crossplatform.zip
cd ~/.local/share/applications/
wget -nc https://raw.githubusercontent.com/InterstellarOne/lro-linux-installer/main/lroverhaul.desktop
sed -i "s/*/$USER/g" lroverhaul.desktop
echo Line Rider Overhaul installed!
dotnet ~/.local/share/lroverhaul/linerider.dll
