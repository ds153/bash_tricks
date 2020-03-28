#!/bin/bash

term="$1"
for i in $(ps auxw|grep $term|awk -F ' ' '{print $2 }'); do kill -9 ${i}; done
