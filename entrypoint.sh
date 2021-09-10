#!/bin/sh -l

set -e

echo "==========Starting Maven Commands=========="
sh -c "echo $OWNER $USERNAME $TOKEN"
sh -c "mvn $* -gs /settings.xml"


echo "==========Finished Maven Commands=========="
