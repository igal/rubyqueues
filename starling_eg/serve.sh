#!/bin/sh

if [ -n "$1" ]; then
    port="$1"
else
    port=22122
fi

mkdir -p queue
starling --port $port --queue "$PWD/queue" --pid "$PWD/starling.$port.pid"
