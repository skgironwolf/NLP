echo -n "Enter a filename > "
read filename
tr '[:upper:]' '[:lower:]' < "${filename}.txt" > "../${filename}1.txt"
tr -sc '^[a-zA-Z0-9]*$' '\n' < "../${filename}1.txt" > "../${filename}2.txt"
tr -d [:punct:] < "../${filename}2.txt" > "../${filename}.tokens.txt"
