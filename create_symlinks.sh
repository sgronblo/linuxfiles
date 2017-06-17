#/bin/bash
LINUX_FILES_PATH=~/linuxfiles
find $LINUX_FILES_PATH -mindepth 1 -maxdepth 1 -name ".*" \! -name ".git" -print0 | xargs -0 -I {} ln -s {} ~
