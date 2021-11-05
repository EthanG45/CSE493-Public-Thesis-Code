#!/bin/bash

#---------------------------------------------------------------------
# Bash script that loops through all the files of a folder and
# print the paths of all the binaries found that use Swift
# Created by Alexandre Colucci on 01.11.2016
# https://blog.timac.org/2016/1101-apples-use-of-swift-in-ios-10-1-and-macos-10-12
#---------------------------------------------------------------------


#---------------------------------------------------------------------
# Force expand a wildcard pattern into the list of matching pathnames
#---------------------------------------------------------------------
shopt -s nullglob

#---------------------------------------------------------------------
# Function to print the usage
#---------------------------------------------------------------------
printUsage ()
{
	echo "Usage: detectSwift.sh PATH"
	echo "PATH: Folder to search for binaries using Swift"
	echo ""
	echo "Examples:"
	echo "  detectSwift.sh /System/Library"
	echo "  detectSwift.sh /System"
	echo "  detectSwift.sh /"
	echo ""
	echo "Note: run as root in order to avoid permission issues."
	echo ""
}

#---------------------------------------------------------------------
# Function to check if a file (passed as argument $1) is using Swift
# It returns the number of occurrences of the string 'swift'
# from the output of otool
#---------------------------------------------------------------------
isFileUsingSwift ()
{
	otool -L $1 2>/dev/null | grep -o swift | wc -l
}

isFileUsingSwiftUI ()
{
	otool -L $1 2>/dev/null | grep -aoi swiftui | wc -l
}

#---------------------------------------------------------------------
# Function to process a file (passed as argument $1).
# It calls the function isFileUsingSwift() to determine
# if this is a binary using Swift and in this case
# print the path of this file.
#---------------------------------------------------------------------
# processFile ()
# {
# 	isFileUsingSwift=$( isFileUsingSwift $1 )
#  	if [ ${isFileUsingSwift} != 0 ]
#  	then
#  		# We found a binary using Swift
# 	 	echo "   $1"
# 	fi
# }

processFile ()
{
	isFileUsingSwiftUI=$( isFileUsingSwiftUI $1 )
 	if [ ${isFileUsingSwiftUI} != 0 ]
 	then
 		# We found a binary using Swift
	 	echo "   $1"
	fi
}

#---------------------------------------------------------------------
# Check if the script was called with the expected usage
#---------------------------------------------------------------------
PARAMETER_NUMBER=$#
PARAMETER_REQUIRED=1
if [ $PARAMETER_NUMBER != $PARAMETER_REQUIRED ];
then
	printUsage
	exit 1
fi


#---------------------------------------------------------------------
# Get the folder path
#---------------------------------------------------------------------
PATH_TO_CHECK=$1

echo ""
echo "Start time:"
date
echo ""
echo "Apps using SwiftUI in ${PATH_TO_CHECK}"


#---------------------------------------------------------------------
# Export the functions so that the subshell inherits them
#---------------------------------------------------------------------
export -f isFileUsingSwift
export -f isFileUsingSwiftUI
export -f processFile

#---------------------------------------------------------------------
# Find all the regular files in all subdirectories
# and call for each the function processFile()
#---------------------------------------------------------------------

find ${PATH_TO_CHECK} -type f -exec bash -c 'processFile "$0"' {} \;


#---------------------------------------------------------------------
# Finalizing
#---------------------------------------------------------------------
echo ""
echo "Completed at:"
date
echo ""
