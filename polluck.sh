#!/bin/bash
touch grabbedlinks.txt
w3m boards.4chan.org/pol | grep "https" > grabbedlinks.txt
for pageno in {2..18};
do
	w3m boards.4chan.org/pol/$pageno | grep "https" >> grabbedlinks.txt;
done
for fline in $(cat grabbedlinks.txt); do echo - [ ] $fline; done | grep "https" >> grabbedlinks.txt
grep -F "[ ]" grabbedlinks.txt > grabbedlinksnew.txt
rm grabbedlinks.txt
mv grabbedlinksnew.txt grabbedlinks.txt
cat grabbedlinks.txt | sort -u > grabbedlinksnew.txt
rm grabbedlinks.txt
mv grabbedlinksnew.txt grabbedlinks.txt
