echo "Please, enter the file name."		
read file											# get the file name.



if [[ -n "$file" && `cat "$file"` ]];                 						# check if the file exist
then
	invalid=""       									# to show invalid numbers end of the program
	countArray=('0 ' '1 ' '2 ' '3 ' '4 ' '5 ' '6 ' '7 ' '8 ' '9 ')                          # array for saving numbers and count of numbers as "(count)X(*)".
		
	echo "Histogram for $file." 



	while read -r number; do           							# read the file line by line and save the value to number
		if [[ "$number" -gt 10 || "$number" -lt 0 ]];               			# check if the number is in range 0-9, if is save it to invalid variable. Even if there are invalid values, the program continues 
													#to run without considering them.
		then
			invalid="$invalid $number"
		else										# if number in range, add an "*" to countArray.
			countArray[$number]+="*"			
	 	fi	
	done < $file 
	

	for i in "${countArray[@]}"; do echo "$i"; done						# to print the histogram.



	if [[ -n "$invalid" ]]; 								# to show if there are invalid number	
	then
		echo "There are invalid numbers in file. The program worked without considering$invalid."		
	fi



else												# if file does not exist, write a warning and  exit.
	echo "$file: You must provide a filename as an argument"
	exit 1

fi





