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
			#svn upgrade
			svn update
		fi
		cd ..
	}
	echo "update_all_svn() done!!!\n"
}

update_all_hg() {
	for f in *(/); {
		cd $f
		if [[ -d ".hg" ]] then;
			echo "***** UPDATING $f *****"
			hg pull
			hg update
		fi
		cd ..
	}
	echo "update_all_hg() done!!!\n"
}

