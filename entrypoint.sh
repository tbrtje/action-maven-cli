#!/bin/sh -l

set -e

echo "==========Starting Maven Commands=========="
bash -c "sed -i 's/OWNER/$OWNER/g' /settings.xml;  sed -i 's/USERNAME/$USERNAME/g' /settings.xml;  sed -i 's/TOKEN/$TOKEN/g' /settings.xml;  sh -c 'mvn $* -gs /settings.xml';"


echo "==========Finished Maven Commands=========="
