update_all_git() {
	for f in *(/); {
		cd $f
		if [[ -d ".git" ]] then;
			echo "***** UPDATING $f *****"
			git pull
		fi
		cd ..
	}
	echo "update_all_git() done!!!\n"
}

update_all_svn() {
	for f in *(/); {
		cd $f
		if [[ -d ".svn" ]] then;
			echo "***** UPDATING $f *****"
			svn update
		fi
		cd ..
	}
	echo "update_all_svn() done!!!\n"
}

