#! /bin/sh

echo "Removing all unneccessary files and folders..."
find ./Binary/Debug/* -name "Test" -print -delete
find ./Binary/Release/* -name "Test" -print -delete
find ./Build/ ! -name ".gitkeep" -print -delete
#find ./ -name "*.orig" -print -delete
echo "...done."