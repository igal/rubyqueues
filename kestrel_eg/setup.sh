#!/bin/sh

# Checkout code
git clone git://github.com/robey/kestrel.git

# Maybe comment out "specs-1.4.1" in "ivy/ivy.xml"
# Maybe rework "ant/tests.xml" to avoid depending on "compile-tests"

# Compile
ant prepare make-executable-jar

