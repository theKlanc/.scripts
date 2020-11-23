#!/usr/bin/fish
IFS=''
body=false
while read line
  if [ "$body" = true ]
      echo $line
  else
    if [[ $(echo $line | grep "\{\$c.\}") ]]
      body=true
      echo $line
    end
  end
end   
