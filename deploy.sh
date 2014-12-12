#!/bin/bash
if [[ $# -ne 1 ]];
then
	echo "Usage:"
	echo "$0 <base url>"
	exit 1
fi

bower install
sculpin generate --env=prod --url=$1
scp -r output_prod/* subsys:~/www/
