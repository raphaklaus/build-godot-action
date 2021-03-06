#!/bin/sh
set -e

# Install export templates
wget https://downloads.tuxfamily.org/godotengine/3.2/Godot_v3.2-stable_export_templates.tpz --quiet
mkdir ~/.cache
mkdir -p ~/.config/godot
mkdir -p ~/.local/share/godot/templates/3.2.stable
unzip Godot_v3.2-stable_export_templates.tpz
mv templates/* ~/.local/share/godot/templates/3.2.stable
rm -f Godot_v3.2-stable_export_templates.tpz

mkdir -p ~/build/
echo "antesssss"
echo $(pwd)
echo $(ls)
godot --export-debug linux ~/build/rexgame.x86_64

cd ~
echo $(ls)

# if [ "$3" != "" ]
# then
#     SubDirectoryLocation="$3/"
# fi

# Export for project
# echo "Building $1 for $2"
# echo $SubDirectoryLocation
# mkdir -p ~/build/${SubDirectoryLocation:-""}
#cd ${5-"~"}
# echo $(pwd)
# echo $(ls)

# cd ~
# echo $(pwd)
# echo $(ls)
# cd build
# echo $(pwd)
# echo $(ls)

echo ::set-output name=build::~/build/

# if [ "$4" = "true" ]
# then
#     mkdir ~/package
#     cd ~/build
#     zip ~/package/artifact.zip ${SubDirectoryLocation:-"."} -r
#     echo ::set-output name=artifact::~/package/artifact.zip
# fi
