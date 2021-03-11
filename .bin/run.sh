VSCODE_APP_EDITION="code"

if [ $vscodeEdition == 'code-insiders' ]
then
  VSCODE_APP_EDITION="code-insiders"
fi

if [ $vscodeEdition == 'codium' ]
then
  VSCODE_APP_EDITION="codium"
fi

if [[ $1 == *"vscode-remote"* ]]; then
  /usr/local/bin/$VSCODE_APP_EDITION --folder-uri "$1"
else
  /usr/local/bin/$VSCODE_APP_EDITION "$1"
fi
