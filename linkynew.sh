#!/bin/bash
wget vohvelikissa.github.io/de4chan.sh
chmod +x de4chan.sh
./de4chan.sh
w3m $(cat grabbedlinks.txt)
rm grabbedlinks.txt
rm get4chan.sh
rm edit4chan.sh
rm de4chan.sh
