#!/bin/sh -l

set -e

echo "==========Starting Maven Commands=========="
bash -c "if [-z "$OWNER"]
then
  sh -c 'mvn $*'

else
  sed -i 's/OWNER/$OWNER/g' /settings.xml
  sed -i 's/USERNAME/$USERNAME/g' /settings.xml
  sed -i 's/TOKEN/$TOKEN/g' /settings.xml
  sh -c 'mvn $* -gs /settings.xml'
fi"


echo "==========Finished Maven Commands=========="
