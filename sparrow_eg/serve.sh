#!/bin/sh

mkdir -p queue
sparrow --base "$PWD/queue" --log "$PWD/sparrow.log" --port 11212
