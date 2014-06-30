#!/usr/bin/env bash

# run setup scripts
for file in ./scripts/*; do
  echo "Running $file..."
  bash $file
done

# move dotfiles
for file in ./files/*; do
  echo "Moving $file..."
  cp -i "$file" "$HOME/.$file"
done

source ~/.bashrc

echo "Finished."
exit 0