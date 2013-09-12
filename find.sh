mkdir -p tmp

git verify-pack -v .git/objects/pack/pack-*.idx | grep -Ev "non delta|chain length|git/objects" | tr -s " " | sort -k3gr | head -n100 | tee tmp/bigfiles-verbose.txt

i=0
for rev in $(git rev-list --all)
do
  echo -en "  ref# ${i} \r"  >&2
  for sha in `cut -f 1 -d ' ' tmp/bigfiles-verbose.txt`
  do
    git ls-tree -r $rev | grep $sha | cut -f 2
  done
  i=`expr $i + 1`
done | tee tmp/bigfiles-renames.txt

cat tmp/bigfiles-renames.txt | sort | uniq | tee tmp/bigfiles-unique.txt

