#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <alias_command> <command_or_sh_file>"
  exit 1
fi

ALIAS_COMMAND=$1
COMMAND_OR_SH_FILE=$2

echo "alias $ALIAS_COMMAND='$COMMAND_OR_SH_FILE'" >> ~/.zshrc

source ~/.zshrc

echo "Alias '$ALIAS_COMMAND' added to .zshrc with command: $COMMAND_OR_SH_FILE"