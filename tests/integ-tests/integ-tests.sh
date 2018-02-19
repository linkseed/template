set -e

[ -n "$BASH_VERSION" ] && source "$HOME/.bashrc"
[ -n "$ZSH_VERSION"  ] && source "$HOME/.zshrc"

pearl install test

if [ ! -d "$PEARL_HOME/packages/default/test" ]; then
	echo 'Error: The package `test` does not exist after installing it.'
	exit 1
fi

# From here is where you can add the integ tests for your packages

pearl update test

pearl remove test

# vim: ft=sh
