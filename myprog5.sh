echo "Please, write the  command. "
read -a command                                            # get the file name.



if [[ -n "$command" ]];                                         # check if the command is not null and exist. Agrument array lengt=2
then

    if [[ "${command[0]}" == "-R" ]]; then

	dName="${command[1]}"
        dName=${dName:1:-1}
        echo "$dName"
        FILES_TO_COPY=$(ls $dName)
        echo "$FILES_TO_COPY"
        destination_to_copy=($(ls -d */))
        len_des=$(ls -d */ | wc -l)
        echo "$destination_to_copy $len_des"
       
        ls -d */ | while read -r LINE
        do
          echo "$LINE"
          LINE=${LINE:0:-1}
          mkdir -p ./$LINE/copied
	  cd /$LINE
          sudo cp $dname ./copied


       done
        
        
       


    else
    
        dName="${command[0]}"
        dName=${dName:1:-1}
        echo "$dName"
        FILES_TO_COPY=$(ls $dName)
        echo "$FILES_TO_COPY"
        mkdir -p ./copied
        sudo cp $dName ./copied
       

    fi


else                                                # if file does not exist, write a warning and  exit.
    echo "$file: You must provide a proper command as an argument"
    exit 1

fi
