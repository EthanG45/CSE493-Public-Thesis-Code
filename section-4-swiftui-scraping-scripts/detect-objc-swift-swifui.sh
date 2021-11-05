#!/bin/bash

#---------------------------------------------------------------------
# Bash script that loops through all the files of a folder and
# - print the paths of all the binaries found
# - detect the languages used by the binaries (C, C++, Objective-C, Swift, SwiftUI)
#
# Created by Alexandre Colucci on 17.10.2020
# https://blog.timac.org/2020/1019-evolution-of-the-programming-languages-from-iphone-os-to-ios-14/
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
	echo "Usage: detectBinaries.sh PATH"
	echo "PATH: Folder to search for binaries and detect the programming languages"
	echo ""
	echo "Examples:"
	echo "  detectBinaries.sh /System/Library"
	echo "  detectBinaries.sh /System"
	echo "  detectBinaries.sh /"
	echo ""
}

#---------------------------------------------------------------------
# Function to check if a file (passed as argument $1) is an executable
# It returns the number of occurrences of the string 'Mach-O' returned by
# the output of the file command. File would generally return a line like
# - Mach-O 64-bit executable arm64e (/usr/bin/sysdiagnose)
# - Mach-O 64-bit dynamically linked shared library arm64e (/usr/lib/libobjc-trampolines.dylib)
# - Mach-O 64-bit bundle arm64e (/usr/lib/xpc/support.bundle/support)
# - Mach-O 64-bit dynamic linker arm64e (/usr/lib/dyld)
# - Mach-O 64-bit kext bundle arm64e (/System/Library/Extensions/AppleIDV.kext/AppleIDV)
# - Mach-O 64-bit dynamically linked shared library stub arm64e (/Applications/FTMInternal-4.app/libMobileGestalt.dylib)
#---------------------------------------------------------------------
isExecutable ()
{
	file $1 2>/dev/null | grep -o "Mach-O" | wc -l
}

#---------------------------------------------------------------------
# Function to process a file (passed as argument $1).
# It calls the function isExecutable() to determine
# if this file is an executable and in this case
# print the path of this file and tries to detect the programming language.
#---------------------------------------------------------------------
processFile ()
{
	isExecutable=$( isExecutable $1 )
 	if [ ${isExecutable} != 0 ]
 	then
 		#
 		# Run otool on the binary
 		#
	 	otoolOutput=$( otool -L $1 )
	 	
	 	#
	 	# Check if the binary dynamically links to /usr/lib/libobjc.A.dylib to detect Objective-C
	 	#
	 	isObjectiveC=$( echo "${otoolOutput}" | grep -o "/usr/lib/libobjc\." | wc -l )
	 	
	 	#
	 	# Check if the binary dynamically links to some libraries in /usr/lib/swift/ to detect Swift
	 	# For iOS 10, iOS 11 and iOs 12, check the libraries in /System/Library/PrivateFrameworks/Swift/
	 	# For iOS 9, the Swift libraries were built inside the app, search for @rpath/libswiftUIKit.dylib
	 	#
	 	isSwift=$( echo "${otoolOutput}" | grep -o "/usr/lib/swift/" | wc -l )
	 	if [ ${isSwift} == 0 ]
		then
			# On iOS 11, the Swift dylib were inside "/System/Library/PrivateFrameworks/Swift/"
			isSwift=$( echo "${otoolOutput}" | grep -o "/System/Library/PrivateFrameworks/Swift/" | wc -l )
			
			if [ ${isSwift} == 0 ] && [[ $1 != */libswiftUIKit.dylib ]]
			then
				# On iOS 9, the Swift dylib were built into the app
				isSwift=$( echo "${otoolOutput}" | grep -o "@rpath/libswiftUIKit\.dylib" | wc -l )
			fi
		fi
	 	
	 	#
	 	# Check if the binary dynamically links to /System/Library/Frameworks/SwiftUI.framework/SwiftUI to detect SwiftUI
	 	#
	 	isSwiftUI=$( echo "${otoolOutput}" | grep -o "/System/Library/Frameworks/SwiftUI\.framework/SwiftUI" | wc -l )
	 	
	 	#
	 	# Check if the binary dynamically links to /usr/lib/libc++.1.dylib to detect C++
	 	# On iOS 7 and earlier, also check /usr/lib/libstdc++.6.dylib
	 	# Also some libraries like /usr/lib/libc++abi.dylib are using C++
	 	#
	 	isCPP=$( echo "${otoolOutput}" | grep -o "/usr/lib/libc++" | wc -l )
	 	if [ ${isCPP} == 0 ]
		then
			isCPP=$( echo "${otoolOutput}" | grep -o "/usr/lib/libstdc++" | wc -l )
		fi
		
		#
	 	# Check if the binary dynamically links to /usr/lib/libSystem.B.dylib to detect C
	 	# or libraries inside /usr/lib/system/ for older iOS versions
	 	#
	 	isC=$( echo "${otoolOutput}" | grep -o "/usr/lib/libSystem\." | wc -l )
	 	if [ ${isC} == 0 ]
		then
			isC=$( echo "${otoolOutput}" | grep -o "/usr/lib/system/" | wc -l )
		fi
		
		#
		# Special case for libobjc-trampolines.dylib which only contains assembly
	 	# See https://opensource.apple.com/source/objc4/
	 	#
	 	if [[ $1 == */usr/lib/libobjc-trampolines.dylib ]]
		then
			isASM=1
		else
			isASM=0
		fi
		
		#
		# Special case for /usr/lib/dyld which contains C++
	 	# See https://opensource.apple.com/source/dyld/
	 	#
	 	if [[ $1 == */usr/lib/dyld ]]
		then
			isCPP=1
		fi
		
		#
		# Special case for /System/Library/Caches/com.apple.xpc/sdk.dylib which is a generated dylib
	 	#
	 	if [[ $1 == */System/Library/Caches/com.apple.xpc/sdk.dylib ]]
		then
			isASM=1
		fi
		
		#
		# Special case for /System/Library/Caches/com.apple.xpcd/xpcd_cache.dylib which is a generated dylib
	 	#
	 	if [[ $1 == */System/Library/Caches/com.apple.xpcd/xpcd_cache.dylib ]]
		then
			isASM=1
		fi
		
		#
		# Special case for extensions. If we can't detect the programming language, assume C++
		# This is for example the case of /System/Library/Extensions/AppleIDV.kext/AppleIDV
	 	#
	 	if [[ $1 == */System/Library/Extensions/* ]]
		then
			if [ ${isObjectiveC} == 0 ] && [ ${isSwift} == 0 ] && [ ${isSwiftUI} == 0 ] && [ ${isCPP} == 0 ] && [ ${isC} == 0 ] && [ ${isASM} == 0 ]
	 		then
				isCPP=1
			fi
		fi
		
		
		#
		# Build the display string
		#
	 	
	 	languages=''
	 	
	 	# Check Objective-C
	 	if [ ${isObjectiveC} != 0 ]
	 	then
	 		languages="${languages}|Objective-C"
	 	fi
	 	
	 	# Check Swift
	 	if [ ${isSwift} != 0 ]
	 	then
	 		languages="${languages}|Swift"
	 	fi
	 	
	 	# Check SwiftUI
	 	if [ ${isSwiftUI} != 0 ]
	 	then
	 		languages="${languages}|SwiftUI"
	 	fi
	 	
	 	# Check C++
	 	if [ ${isCPP} != 0 ]
	 	then
	 		languages="${languages}|C++"
	 	fi
	 	
	 	# Check C
	 	if [ ${isObjectiveC} == 0 ] && [ ${isSwift} == 0 ] && [ ${isCPP} == 0 ] && [ ${isASM} == 0 ]
	 	then
	 		if [ ${isC} != 0 ]
	 		then
		 		languages="${languages}|C"
		 	fi
	 	fi
	 	
	 	# Check asm
	 	if [ ${isASM} != 0 ]
	 	then
	 		languages="${languages}|asm"
	 	fi
	 	
	 	
	 	# Safety checks: Unknown language
	 	if [ ${isObjectiveC} == 0 ] && [ ${isSwift} == 0 ] && [ ${isSwiftUI} == 0 ] && [ ${isCPP} == 0 ] && [ ${isC} == 0 ] && [ ${isASM} == 0 ]
	 	then
	 		echo "****   $1 could not be detected?"
	 	fi

	 	echo "   $1 ${languages}"
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
echo "Executables found in ${PATH_TO_CHECK}"


#---------------------------------------------------------------------
# Export the functions so that the subshell inherits them
#---------------------------------------------------------------------
export -f isExecutable
export -f processFile

#---------------------------------------------------------------------
# Find all the regular files in all subdirectories
# and call for each the function processFile()
#---------------------------------------------------------------------

echo $1
find ${PATH_TO_CHECK} -type f -exec bash -c 'processFile "$0"' {} \;


#---------------------------------------------------------------------
# Finalizing
#---------------------------------------------------------------------
echo ""
echo "Completed at:"
date
echo ""