#!/bin/sh

# Install configuration
cp kestrel.conf kestrel/dist/kestrel-1.1/config/kestrel.conf

# Start server
java -jar kestrel/dist/kestrel-1.1/kestrel-1.1.jar

