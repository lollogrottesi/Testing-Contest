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

echo "file correclty read '${input}'"

#output="rev_${input}"


while IFS= read -r line
do

	if [[ $line =~ ^[[:space:]]*(sw|SW)[[:space:]]+([a-zA-Z0-9]+)[[:space:]]*,[[:space:]]*([0-9]+)\(([a-zA-Z0-9]+) ]]
	then
		matchline=${BASH_REMATCH[0]}
		op=${BASH_REMATCH[1]}
		rega=${BASH_REMATCH[2]}
		offset=${BASH_REMATCH[3]}
		regb=${BASH_REMATCH[4]}
		

	#else
	#	echo $line >> ${output}
	fi
 
done < "$input"