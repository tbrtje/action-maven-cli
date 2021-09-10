#!/bin/sh -l

set -e

echo "==========Starting Maven Commands=========="
bash -c "echo $OWNER $USERNAME $TOKEN"
bash -c "sed -i 's/OWNER/$OWNER/g' /settings.xml"
bash -c "sed -i 's/USERNAME/$USERNAME/g' /settings.xml"
bash -c "sed -i 's/TOKEN/$TOKEN/g' /settings.xml"
bash -c "mvn $* -gs /settings.xml"


echo "==========Finished Maven Commands=========="
