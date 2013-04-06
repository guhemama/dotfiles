#!/usr/bin/sh

for file in *
do
  if [ "$file" != 'install.sh' ]
  then
   mv "$file" "$HOME/.$file"
  fi
done
