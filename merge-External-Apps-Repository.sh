#################################################################
##                      merge-External-Apps-Repository.sh
## 
#################################################################




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
git push origin main