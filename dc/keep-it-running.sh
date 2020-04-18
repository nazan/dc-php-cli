#!/usr/bin/env bash

trap "{ echo 'Good bye.'; exit 129; }" SIGINT SIGTERM
echo "Going to sleep now. My pid is $$. Kill me any time with 'kill -s SIGTERM $$'"

while true; do sleep 3600 & wait; done