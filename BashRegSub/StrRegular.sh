#!/bin/bash

if [[ "${1}" == "-file" ]]; then
	if [[ -f "${2}" ]]; then
		input="${2}"
	else
		echo "${2} cannot open file"
		exit
	fi
elif [[ "${1}" == "-h" ]]; then
	echo "-file, file to correct" 
	exit
else
	echo "No fiele specified, type -h for help"
	exit
fi

output="rev_${input}"



#test="sw x14,168(x3)"

#[[ $test =~ ^[[:space:]]*(sw|SW)[[:space:]]+([a-zA-Z0-9]+)[[:space:]]*,[[:space:]]*([0-9]+)\(([a-zA-Z0-9]+) ]]
#echo $?
#echo ${BASH_REMATCH[0]} sw x14,168(x3
#echo ${BASH_REMATCH[1]} sw
#echo ${BASH_REMATCH[2]} x14
#echo ${BASH_REMATCH[3]} 168
#echo ${BASH_REMATCH[4]} x3

while IFS= read -r line
do

	if [[ $line =~ ^[[:space:]]*(sw|SW)[[:space:]]+([a-zA-Z0-9]+)[[:space:]]*,[[:space:]]*([0-9]+)\(([a-zA-Z0-9]+) ]]
	then
		matchline=${BASH_REMATCH[0]}
		op=${BASH_REMATCH[1]}
		rega=${BASH_REMATCH[2]}
		offset=${BASH_REMATCH[3]}
		regb=${BASH_REMATCH[4]}
		
		echo "sw s5, 1(s11)" >> ${output}
	else
		echo $line >> ${output}
	fi
 
done < "$input"