#!/bin/bash
set -e
rm -f app/tmp/pids/server.pid
echo "db start. Processing..."
rails db:create db:migrate db:seed
echo "db done"
rails server -e production
