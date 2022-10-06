#!/bin/bash
#
# This file is part of Kde Image Menu (KIM). KIM was created by
# Charles Bouveyron <charles.bouveyron@free.fr>.
# 
# KIM is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# any later version.
# 
# KIM is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with Foobar; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

sudo apt install imagemagick
sudo pacman -S imagemagick
sudo cp src/kim_*.desktop /usr/share/kservices5/ServiceMenus/
sudo cp src/bin/kim_* /usr/bin/
sudo chmod a+rx /usr/bin/kim_*
sudo chmod a+r /usr/share/kservices5/ServiceMenus/kim_*.desktop
sudo mkdir /usr/share/kim
sudo cp COPYING /usr/share/kim/kim_about.txt
sudo mkdir /usr/share/kim/slideshow/
sudo cp src/slideshow/* /usr/share/kim/slideshow/
sudo mkdir /usr/share/kim/gallery
sudo cp src/gallery/* /usr/share/kim/gallery 

echo "Kim has been installed. Good bye!"
