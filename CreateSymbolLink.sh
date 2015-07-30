#why $1 cannot use . passed in
GIT_ROOT=$1
ECLIPSE_WORKSPACE=$2 
echo $GIT_ROOT
echo $ECLIPSE_WORKSPACE
ln -s $GIT_ROOT/org.eclipse.core.runtime/ $ECLIPSE_WORKSPACE/.metadata/.plugins/

#clean up
#unset GIT_ROOT
#unset ECLIPSE_WORKSPACE