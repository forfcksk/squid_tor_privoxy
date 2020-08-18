#!/bin/bash
# encoding: utf-8

service tor start
service privoxy start
service squid start
tail -f  /dev/null

