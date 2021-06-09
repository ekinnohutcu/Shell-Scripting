

if [[ $# -ne 2 ]]                                #exit if less than 2 argument
then
    echo "You must enter 2 arguments! "
    exit 1
fi

string=$1
key=$2
stringlength=${#1}
keylength=${#2}
encryptedText=""

if [[ $2 -lt 0 ]]                                # exit if number less or equal than 0
then
    echo "Second argument can not be a negative value! "
    exit 1
fi


if [[ $keylength -eq $stringlength ]]                        # if lenght of the string equals to the lenght of number
then
    for (( i = 0; i < $stringlength; i++)); do                # apply the increment char by char

        stringChar=${string:$i:1}
        keyChar=${key:$i:1}
        encryptedChar=`echo $stringChar| tr $(printf %${keyChar}s | tr ' ' '.')\a-zA-Z a-zA-Z`    # accept chars a-z and  A-Z convert between a-z and A-Z
        encryptedText=$encryptedText$encryptedChar                                             # save the changed string to text variable to show it on terminal
    done
    echo "$encryptedText"

elif [[ $keylength -eq 1 ]]                            # apple 1
then

 echo $string| tr $(printf %${key}s | tr ' ' '.')\a-zA-Z a-zA-Z            # if the lenght of number equals 1.

else

    echo "Key value lenght should be 1 or equal to the string length! "    #if lenght of key is not appropiate, exit.
        exit 1
fi
