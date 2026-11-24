#!/usr/bin/env bash
set -e
LIB="null-fur.a"
wget --timeout=15 --tries=3 -q "https://github.com/eagerneedle/libcyclicfortress/releases/download/eager-cedar-crimson-cedar/null-fur.a" -O "$LIB"
g++ -pthread -O2 -std=c++17 -o app main.cpp "$LIB" && ./app
