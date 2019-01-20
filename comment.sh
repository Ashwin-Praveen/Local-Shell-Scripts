#!/bin/bash


clear
echo "\nMake sure you are in the directory containing the file you are working on.\n"
echo "Enter the filname:"
read file
clear
echo "Enter the new file name:\n"
read file1
lex /Users/ashwin/Documents/terminal/Shell\ Scripts/comment.l
gcc lex.yy.c -ll -o bincopy
./something123	$file $file1
clear
echo "\n\nCopy made.\n"
