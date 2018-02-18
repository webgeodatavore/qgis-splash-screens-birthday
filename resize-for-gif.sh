cd resized
for i in $(ls *.png);
  do convert $i -background transparent -compose Copy -gravity center -extent 704x376 ../output-centered/$i;
done;
cd ..
