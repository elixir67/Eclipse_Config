#why $1 cannot use . passed in
GIT_ROOT=$1
ECLIPSE_WORKSPACE=$2 

LINK_DIR=$ECLIPSE_WORKSPACE/.metadata/.plugins/org.eclipse.core.runtime
if [ -d "$LINK_DIR" ]; then 
  if [ -L "$LINK_DIR" ]; then
    # It is a symlink!
    # Symbolic link specific commands go here.
    rm "$LINK_DIR"
  else
    # It's a directory!
    # Directory command goes here.
    #rmdir "$LINK_DIR"
    mv "$LINK_DIR" "$LINK_DIR"+".bak" 
  fi
fi

echo $GIT_ROOT
echo $ECLIPSE_WORKSPACE
echo $LINK_DIR
#ln -s $GIT_ROOT/org.eclipse.core.runtime/ $ECLIPSE_WORKSPACE/.metadata/.plugins/
ln -s $GIT_ROOT/org.eclipse.core.runtime/ $LINK_DIR