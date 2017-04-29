#!/usr/bin/env bash


echo "try yo copy $1 -> REMOTE /usr/src/dosakai/features/list/test.feature"

scp -i insecure_key -o StrictHostKeyChecking=no $1 \
  root@localhost:/usr/src/dosakai/features/list/test.feature

echo "DONE"

ssh -i insecure_key -o StrictHostKeyChecking=no root@localhost \
  /usr/src/dosakai/node_modules/.bin/cucumber.js /usr/src/dosakai/features/list/test.feature --no-warnings
