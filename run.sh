files="/Users/yanagi/Dropbox/MyWorks/Freeze-in_ML/class/input_cards/2body/*"
for filepath in $files; do
    echo $filepath
    ./class $filepath
done
