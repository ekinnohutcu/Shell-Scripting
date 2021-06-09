control=1

while [ $control != 0 ]
do
    echo " MAIN MENU "
    echo "-----------------------------------"

    echo "Please select an option : "
    echo
    echo " 1. Create Histogram "
    echo " 2. Encryption"
    echo " 3. Delete oldest "
    echo " 4. Convert numbers"
    echo " 5. Organized files "
    echo " 6. Exit "
    echo -n "Enter your choice [1-6] : "

    read choice

    clear

    if [ $choice -eq 1 ]
    then
      
        ./myprog1.sh 

    elif [ $choice -eq 2 ]
    then
        read -p " Enter the string and encryption key : " string key
        ./myprog2.sh $string $key

    elif [ $choice -eq 3 ]
    then
        ./myprog3.sh
        

    elif [ $choice -eq 4 ]
    then
        ./myprog4.sh 
        
    elif [ $choice -eq 5 ]
    then
    	./myprog5.sh
    
    elif [ $choice -eq 6 ]
    then
    	exit 1


    control=0
    fi
done
