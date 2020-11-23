#!/bin/bash
IFS=''
body=false
while read line
do
  if [ "$body" = true ]; then
      echo $line
  else
      if [[ $(echo $line | grep "\${c.}") ]]; then
      body=true
      echo $line
    fi
  fi
done
