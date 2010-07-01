#/bin/bash
LINUX_FILES_PATH=~/linuxfiles
find $LINUX_FILES_PATH -mindepth 1 -maxdepth 1 -name ".*" \! -name ".git" -printf '%f\0' | xargs -0rI{} ln -Tfs $LINUX_FILES_PATH/{} ~/{}
