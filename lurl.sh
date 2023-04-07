echo "enter url your for js file : "
read urljs

echo "enter your target url : "
read url

echo "python linkfinder.py -i $urljs -o cli | tee linkfind.txt"
python linkfinder.py -i $urljs -o cli | tee linkfind.txt


file_path="linkfind.txt"


echo "------------------------"
echo ""

# read the list of words from the file and iterate over them
while read -r name
do
  echo "$url$name"
done < "$file_path"

