# a million commits
#for Y in {1990..2018}

Y=2017
RANDOM=$$
for jhgdfshdj in {2017}
do
  mkdir $Y
  cd $Y
  for M in {01..12}
  do
    mkdir $M
    cd $M
    for D in {01..31}
    do
      mkdir $D
      cd $D
      if [ $(($RANDOM/1000)) -lt 1000 ]
       then
         S=$(jot -r 1 0 24)
         echo "$S^^^^^^^^^^^^"
         for i in {01..$S}
         do
           #echo "$i on $M/$D/$Y" > commit.md
           export GIT_COMMITTER_DATE="$Y-$M-$D 12:00:00"
           export GIT_AUTHOR_DATE="$Y-$M-$D 12:00:00"
           git add commit.md -f
           git commit --date="$Y-$M-$D 12:00:00" -m "$i on $M $D $Y"
         done
       else
           echo "-------------------------------------"
      fi
      #echo $(($RANDOM/1000))
      # jot -r 1 0 10
      cd ../
    done
    cd ../
  done
  cd ../
done
git push origin master
git rm -rf 20**
git rm -rf 19**
git commit -am "cleanup"
git push origin master
