#!/bin/bash

echo "Running Quake 3 demo dedicated server. By running this you agree to the terms in the EULA."
echo "You can read the terms at https://ioquake3.org/extras/patch-data/"
command="node build/ioq3ded.js +set fs_game baseq3 +set dedicated 2 +exec server.cfg"
log="q3.log"
match="tty console mode disabled"

$command > "$log" 2>&1
pid=$!

while sleep 5
do
  if fgrep --quiet "$match" "$log"
  then
    # kill $pid
    break
  fi
done

echo "Installation complete."
echo "Launching server..."
$command
