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

while IFS= read -r line
do

	if [[ $line =~ ^(.*)\;(.*)[:space:]*$ ]]
	then
		matchline=${BASH_REMATCH[0]}
		asm_op=${BASH_REMATCH[1]}
		#echo $line >> ${output}
		echo $asm_op >> ${output}
	fi
 
done < "$input"