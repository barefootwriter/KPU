# git-rm-bigfiles.sh
for file in `cat tmp/bigfiles-renames.txt`
do
  git rm -r --cached --ignore-unmatch $file
done
