#!/usr/bin/env bash

# CRLF<space> is used to fold long lines
sed -z "s/\r\n //g" $1 > tmp.ics

# Black magic
gawk -E script.awk tmp.ics > data.xml

# \n is better anyway
sed -i 's/\r//g' data.xml
