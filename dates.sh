while read date
do
    fileName=`echo "$date" | tr " " "_"`
    date="$date 14:00 2014 +0500"
    echo "Creating file... $fileName"
    touch "$fileName"
    git add "$fileName"
    git commit --date="$date" --author="arshiamidos@gmail.com" -m "$fileName"
done <dates.txt
