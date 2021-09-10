#!/bin/sh -l

set -e

echo "==========Starting Maven Commands=========="
bash -c "if [-z "$GS_CONFIG"]
then
  sh -c 'mvn $*'

else
  sh -c 'echo $GS_CONFIG > /settings.xml'
  sh -c 'mvn $ -gs /settings.xml*'
fi"


echo "==========Finished Maven Commands=========="
