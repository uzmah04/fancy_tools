#!/bin/bash

function write_to_file
{
        if [[ -r"$2" && -w"$2" ]]
        then
                echo "$1" >> "$2"
		return 0
        else
                return 1
        fi
}

function check_branch
{
	Current_branch="$(git rev-parse --abbrev-ref HEAD)"
	if [[ "$Current_branch" == "master" ]]
	then
		echo "On branch master"
	else
		git checkout master
		echo "Now on branch master"
		echo " "
	fi
}

check_branch

Current_path="$(pwd)"

cd
code="$(ls)"
folder="src"
if [[ "$code" == *"$folder"* ]]
then
        cd src

	Check_content="$(ls)"
	repo="fancy_tools"
	if [[ "$Check_content" == *"$fancy_tools"* ]]
	then
		echo "src/fancy_tools present"
	else
		git clone https://github.com/uzmah04/fancy_tools.git
		echo "src/fancy_tools successful"
	fi

else
        mkdir ~/src
	cd src
        git clone https://github.com/uzmah04/fancy_tools.git
        echo "src/fancy_tools created"
fi

cd ~/src/fancy_tools
New_path="$(pwd)"
file=$(<~/.bashrc)

file_aliases="source $New_path/.aliases"
file_fancy="source $New_path/fancy_functions.sh"

if [[ "$file" == *"$file_aliases"* ]]
then
	echo ".aliases successful"
else
	write_to_file "source $New_path/.aliases" ~/.bashrc

	if [[ $? -ne 0 ]]
	then
        	echo "Failed to write in ~/.bashrc (.aliases)"
	else
        	echo "Success in writing in ~/.bashrc (.aliases)"
	fi
fi

if [[ "$file" == *"$file_fancy"* ]]
then
        echo "fancy_functions.sh successful"
else
        write_to_file "source $New_path/fancy_functions.sh" ~/.bashrc

	if [[ $? -ne 0 ]]
	then
	        echo "Failed to write in ~/.bashrc (fancy_functions.sh)"
	else
	        echo "Success in writing in ~/.bashrc (fancy_functions.sh)"
	fi
fi

cd
code="$(ls)"
folder="bin"
cd $New_path
if [[ "$code" == *"$folder"* ]]
then
	cd bin
        cp updateFancyTools ~/bin/updateFancyTools
	echo "bin/updateFancyTools successful"
else
        mkdir ~/bin
	cd bin
	cp updateFancyTools ~/bin/updateFancyTools
	echo "bin/updateFancyTools created"
fi

cd ~/bin
bin_path="$(pwd)"
export_path="export PATH=$PATH:$bin_path"
if [[ "$file" == *"$export_path"* ]]
then
	echo "PATH successful"
else
	echo "export PATH=$PATH:$bin_path" >> ~/.bashrc
	echo "PATH exported"
fi

