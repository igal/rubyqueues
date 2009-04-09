#!/bin/sh

# Download binary
wget -c http://www.gtlib.gatech.edu/pub/apache/activemq/apache-activemq/5.2.0/apache-activemq-5.2.0-bin.tar.gz

# Extract files
tar xvfz apache-activemq-5.2.0-bin.tar.gz

# Install Ruby library
gem install stomp
