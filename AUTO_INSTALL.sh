#!/usr/bin/env bash
set -e

echo "[+] Checking project structure..."

if [ ! -d "src" ]; then
  echo "[!] Error: this script must be executed from the root of the reaver project."
  echo "[!] Expected directory: ./src"
  exit 1
fi

echo "[+] Entering src directory..."
cd src

echo "[+] Running configure..."
chmod +x ./configure
./configure

echo "[+] Compiling..."
make

echo "[+] Installing..."
if command -v sudo >/dev/null 2>&1; then
  sudo make install
else
  make install
fi

echo "[+] Done."