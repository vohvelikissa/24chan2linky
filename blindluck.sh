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
