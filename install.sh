#!/usr/bin/env bash

# run setup scripts
for file in ./scripts/*; do
  echo "Running $file..."
  bash $file
done

# move dotfiles
echo "Syncing dotfiles..."
rsync -avz files/ $HOME

source ~/.bashrc

echo "Finished."
exit 0