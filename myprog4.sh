echo "Please, enter the file name."		
read file											# get the file name.



stringValues=('zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine')


if [[ -n "$file" && `cat "$file"` ]];                 						# check if the file exist

then

for (( i = 0 ; i <= 9; i++ )); do 

search="$i"
char="${stringValues[$i]}"
sed -i "s/$search/$char/g" $file


done

cat $file

else												# if file does not exist, write a warning and  exit.
	echo "$file: You must provide a filename as an argument"
	exit 1

fi
