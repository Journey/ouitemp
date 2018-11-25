#!/bin/bash
# Program
#    generate package files based on parameters
# 1. sh -p
# 2. if
basePath=~/Desktop/

# set directory
read -p "enter the directory name: " directory
# list the file directy
# find ${basePath} -type d | egrep -n --color=auto "${directory}" | grep -v '.git' | sort
# declare -a existedDirectory
declare -a existedDirectory=(`find ${basePath} -type d | grep -v '.git' | grep "${directory}" | sort`)
# echo $directory
for inx in "${!existedDirectory[@]}"
do
    printf "%2s %s\n" $inx ${existedDirectory[$inx]}
done

# select directory
declare -i directoryLineNumber
read -p "select directory via line-num: " directoryLineNumber

# cofirm
echo "you select ${existedDirectory[directoryLineNumber]}"
selectedDirectory=${existedDirectory[directoryLineNumber]}
echo "selected directory: ${selectedDirectory}"
# input name
read -p "Input mode name: " newFragmentName
directoryName="${selectedDirectory}/${newFragmentName}"
echo "new directory: ${directoryName}"
# create name
mkdir "${directoryName}"
viewFile="${directoryName}/${newFragmentName}View.js"
containerFile="${directoryName}/${newFragmentName}Container.js"
sagasFile="${directoryName}/${newFragmentName}Sagas.js"
actionFile="${directoryName}/${newFragmentName}Action.js"
reducerFile="${directoryName}/${newFragmentName}Reducer.js"
# create file 
touch $viewFile
touch $containerFile
touch $sagasFile
touch $actionFile
touch $reducerFile

# fill file with content



# cat "${directoryName}/"

