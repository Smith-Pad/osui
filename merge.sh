#################################################################
##                      merge.sh
## 
################################################################


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