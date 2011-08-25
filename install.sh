#!/bin/sh

DIR="$( cd -P "$( dirname "$0" )" && pwd )"
for file in *; do
	[ $file == "install.sh" ] && continue

	source="$HOME/.$file" # FROM ->   (ex: /home/user/.vimrc)
	target="$DIR/$file"   # TO        (ex: /home/user/dotfiles/vimrc)
	if [ -e $source ]
	then
		if [ -L $source ]
		then
			rm $source && ln -s $target $source
		else
			echo Can not symlink $HOME/.$file as it already exists and is not a symlink
		fi
	else
		ln -s $target $source
	fi
done
