#!/bin/bash
set -e
set -o pipefail

handle_signal() {
  PID=$!
  echo "Received signal. PID is ${PID}"
  kill -s SIGHUP $PID
}

trap "handle_signal" SIGINT SIGTERM SIGHUP

echo "Starting karate..."
exec java -jar /opt/karate/karate.jar & wait
echo "Stopping karate..."