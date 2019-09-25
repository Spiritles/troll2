#!/bin/bash
curl http://lotespolyleis.co/wp-content/uploads/2019/06/chocolate-guy-from-spongebob-chocolate-guy-chocolate-guy-off-spongebob.jpg --output ${HOME}/turtles.jpg;
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '${HOME}/turtles.jpg'";
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$HOME'/turtles.jpg"';
killall Dock;
