#################################################################
##                      merge.sh
## 
################################################################

rm -R * 

git clone https://github.com/Smith-Pad/Smith-Pad

cd Smith-Pad

git checkout Smith-Pad-OS-Shell

rm -rf .git/

cp -R * ../

cd ..

rm -rf Smith-Pad


git add * 


git commit -m "Merged from [https://github.com/Smith-Pad/Smith-Pad/tree/Smith-Pad-OS-Shell"


git push origin main






## Merge External-Apps-Launcher from 
## [https://github.com/Smith-Pad/External-Apps-Launcher]

## Prevent Conflicts
rm -rf External-Apps-Launcher
git rm External-Apps-Launcher
git commit -m "Updating...."
git push origin main



## Merge the repository
git clone https://github.com/Smith-Pad/External-Apps-Launcher
cd External-Apps-Launcher
rm -rf .git/
cd ..
git add External-Apps-Launcher
git commit -m "Merged from [https://www.github.com/Smith-Pad/External-Apps-Launcher]"