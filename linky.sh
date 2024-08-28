#!/bin/bash
touch grabbedlinks.txt
for board in $(echo -e "lgbt\nbiz\nb\npol\nfit\ng\nk\nsci");
do
	echo starting $board
	w3m boards.4chan.org/$board | grep "https" >> grabbedlinks.txt
	for pageno in {2..18};
	do
		w3m boards.4chan.org/$board/$pageno | grep "https" >> grabbedlinks.txt
		echo $pageno
	done;
done;
for fline in $(cat grabbedlinks.txt); do echo - [ ] $fline; done | grep "https" >> grabbedlinks.txt
grep -F "[ ]" grabbedlinks.txt > grabbedlinksnew.txt
rm grabbedlinks.txt
mv grabbedlinksnew.txt grabbedlinks.txt
cat grabbedlinks.txt | sort -u > grabbedlinksnew.txt
rm grabbedlinks.txt
mv grabbedlinksnew.txt grabbedlinks.txt
for thing in $(echo -e "archive\ngithub\npastebin\ngitlab\narxiv"); do cat grabbedlinks.txt | grep "$thing" >> nc2.txt; done
rm grabbedlinks.txt
cat nc2.txt | cut -b 7-90 > grabbedlinks.txt
rm nc2.txt
w3m $(cat grabbedlinks.txt)
rm grabbedlinks.txt
