#!/usr/bin/env bash

# Author - BADTRY

read -p "Enter the original file: " original_path
read -p "Enter the copy file: " copy_path

if [ -f "$original_path" ]; then
	original=$original_path
else 
	echo "[!] The file does not exist"
	exit 1
fi
if [ -f "$copy_path" ]; then
	copy=$copy_path
else
	echo "[!] The copy does not exist"
	exit 1
fi

original_hash=$(md5sum $original | awk '{print $1}')
copy_hash=$(md5sum $copy | awk '{print $1}')

if [ $original_hash == $copy_hash ]; then
	echo "[*] The file is not corrupt"
	exit 0
else
	echo "[!] The file is damaged"
	exit 1
fi
