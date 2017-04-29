#!/usr/bin/env bash

scp -i insecure_key -o StrictHostKeyChecking=no $1 \
  root@localhost:/usr/src/dosakai/features/list/test.feature

ssh -i insecure_key -o StrictHostKeyChecking=no root@localhost \
  /usr/src/dosakai/node_modules/.bin/cucumber.js /usr/src/dosakai/features/list/test.feature --no-warnings
