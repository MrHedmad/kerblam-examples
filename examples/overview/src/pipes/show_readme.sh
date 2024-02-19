
set -e

secho () {
    echo $2
    sleep $1
}

secho 1 "Hello! This message comes from inside the 'show_readme.sh' pipe."
secho 1 "I'll now show the start of the 'data/in/readme.md' file..."

echo "------------------------------------------------------"
cat data/in/readme.md | head -n 5 | while read line; do echo ">> $line"; done
echo "------------------------------------------------------"

secho 1 "Notice how it changes with the profiles, even though I'm not changing."

