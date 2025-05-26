#! /bin/bash

while true; do
	if pgrep hello &> /dev/null; then 
		echo "Scriptul ruleaza"
		sleep 5
	else
		echo "Scriptul nu ruleaza. Repornesc scriptul"
		nohup ./hello.sh & > /dev/null
	fi
done
