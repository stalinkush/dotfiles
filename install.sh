#!/bin/bash
# Install scc into ~/bin for all Codespaces

set -e

echo "Trying to install SCC"

# Download and extract scc
wget -qO scc.tar.gz https://github.com/boyter/scc/releases/latest/download/scc_Linux_x86_64.tar.gz
tar xf scc.tar.gz
sudo mv scc ~../../bin/
rm scc.tar.gz

# Ensure ~/bin is in PATH
if ! grep -q 'export PATH=$HOME/bin:$PATH' ~/.bashrc; then
  echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
fi

echo "✅ scc installed successfully!"
