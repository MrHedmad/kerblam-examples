
echo "Hello from docker!"

echo -n "The current working directory is "
pwd

echo "This is what I see from inside the /app workdir:"

tree .

echo -n "The word count of the input readme file is "

wc -w data/in/readme.md

