#################################################################
##                      merge.sh
## 
################################################################


git clone https://github.com/Smith-Pad/Smith-Pad

cd Smith-Pad

git checkout Smith-Pad-OS-Shell

rm -rf .git/

cp -R * ../