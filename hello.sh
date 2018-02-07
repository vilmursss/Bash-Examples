#!/bin/bash



askFirstNum(){

echo "Give first number:"
read firstNum
validateFirst firstNum


}

askSecondNum(){

echo "Give second number:"
read secondNum
validateSecond secondNum

}

validateFirst(){

if [[ ! $1 -gt -1  ]]; then
echo "Input needs to be a positive integer"
askFirstNum
fi
}

validateSecond(){

if [[ ! $1 -gt -1 ]]; then
echo "Input needs to be a positive integer"
askSecondNum
fi

}

echo "Hello World!"
echo "File name: "  $(basename $(readlink -nf $0))
askFirstNum
askSecondNum
echo "Sum:" $(($firstNum+$secondNum))

