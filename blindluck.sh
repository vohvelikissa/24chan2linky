./feelinglucky.sh
cat grabbedlinks.txt > combination.txt
./bizluck.sh
cat grabbedlinks.txt >> combination.txt
./gayluck.sh
cat grabbedlinks.txt >> combination.txt
./bluck.sh
cat grabbedlinks.txt >> combination.txt
./polluck.sh
cat grabbedlinks.txt >> combination.txt
cat combination.txt | grep "github" > nc2.txt
cat combination.txt | grep "pastebin" >> nc2.txt
cat nc2.txt | sort -u > nc3.txt
rm grabbedlinks.txt
rm combination.txt
rm nc2.txt
mv nc3.txt grabbedlinks.txt
cat grabbedlinks.txt | cut -b 7-90 > g2.txt
rm grabbedlinks.txt
mv g2.txt grabbedlinks.txt
w3m $(cat grabbedlinks.txt)
rm grabbedlinks.txt
