path=""
echo "Please, enter the pathname name."		
read pathname

if [[ $# -eq 0 ]]                            #if there is no argument
then
    FILE_TO_DEL=$(ls -t | tail -n1)                    # list according to time/date, print the last one
    # be careful with this one
    path=$FILE_TO_DEL
    #rm -rf "$FILE_TO_DEL"
echo "no argument    $FILE_TO_DEL"


elif [[ $# -eq 1 ]]
then
    pathname=$1
    cd $pathname 
    FILE_TO_DEL=$(ls -t | tail -n1)
    path=$FILE_TO_DEL

else 
    echo “You can not enter 2 or more arguments!”
fi


echo "Do you want to delete $FILE_TO_DEL?"
read answer

if [[ $answer == "y" ]]
then
    rm -rf "$path"
elif [[ $answer == "n" ]]
then 
    echo "no"
    exit 1
else
    echo "exit"
    exit 1
fi
