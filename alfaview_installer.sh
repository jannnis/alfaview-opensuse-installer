#!/bin/bash
wget -O "alfaview.deb" "https://alfaview.com/downloads/latest/stable/linux"
pakage_rpm=$(alien -r alfaview.deb|grep -o alfaview.*\.rpm)
echo $pakage_rpm
rm ./alfaview.deb
sudo zypper install -y --allow-unsigned-rpm $pakage_rpm
rm $pakage_rpm
