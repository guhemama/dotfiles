#!/usr/bin/env bash

# run setup scripts
for file in ./scripts/*; do
  echo "Running $file..."
  bash $file
done

# move dotfiles
for file in `ls files`; do
  echo "Moving $file..."
  mv -i "files/$file" "$HOME/.$file"
done

source ~/.bashrc

echo "Finished."
exit 0