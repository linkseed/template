#!/usr/bin/fish

source $HOME/.config/fish/config.fish

pearl install test

# Fish trap may not work from time to time.
# Forcing the sourcing here:
source $HOME/.config/fish/config.fish

if [ ! -d $PEARL_HOME/packages/default/test ]
    echo "Error: The package test does not exist after installing it."
    exit 1
end

# From here is where you can add the integ tests for your packages

pearl update test

pearl remove test
