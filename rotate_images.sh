for img in *.png; do
    convert "$img" -rotate 90 "$img"
done
