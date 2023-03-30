#!/bin/bash

if [ -z "$SOTES_INSTALL_PATH" ]; then
    echo "Error: SOTES_INSTALL_PATH not set"
    exit 1
fi

ln -sf ${PWD}/bin/client.so ${SOTES_INSTALL_PATH}/bin/
ln -sf ${PWD}/bin/server.so ${SOTES_INSTALL_PATH}/bin/

# rm ${SOTES_INSTALL_PATH}/gameinfo.txt
cp ./gameinfo.txt ${SOTES_INSTALL_PATH}/gameinfo.txt

# rm ${SOTES_INSTALL_PATH}/cfg/skill.cfg
cp ./cfg/skill.cfg ${SOTES_INSTALL_PATH}/cfg/skill.cfg

mkdir -p ${SOTES_INSTALL_PATH}/sound/weapons/dl44
cp ./sound/weapons/dl44/dl44_fire1.wav ${SOTES_INSTALL_PATH}/sound/weapons/dl44/dl44_fire1.wav

# rm ${SOTES_INSTALL_PATH}/scripts/game_sounds_weapons.txt
cp ./scripts/game_sounds_weapons.txt ${SOTES_INSTALL_PATH}/scripts/game_sounds_weapons.txt

# rm ${SOTES_INSTALL_PATH}/scripts/weapon_mp5.txt
cp ./scripts/weapon_mp5.txt ${SOTES_INSTALL_PATH}/scripts/weapon_mp5.txt

# rm ${SOTES_INSTALL_PATH}/scripts/weapon_dl44.txt
cp ./scripts/weapon_dl44.txt ${SOTES_INSTALL_PATH}/scripts/weapon_dl44.txt
