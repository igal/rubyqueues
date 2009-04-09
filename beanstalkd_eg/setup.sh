#!/bin/sh

# Download server, extract and compile it
wget http://xph.us/dist/beanstalkd/beanstalkd-1.3.tar.gz
tar xvfz beanstalkd-1.3.tar.gz
cd beanstalkd-1.3
./configure && make
cd -

# Install client
gem install beanstalk-client
