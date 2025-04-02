#! /usr/bin/env bash

pkg.install() {
    echo "installing editorconfig extension"
    code --install-extension editorconfig.editorconfig

    command -v meld
    if [[ $? == 0 ]]; then
      echo "found meld - extend vscode"
      code --install-extension danielroedl.meld-diff
    fi

    echo "installing vscode extensions for remote codespaces"
    code --install-extension 4ops.coder-remote
    code --install-extension github.codespaces
    code --install-extension gitpod.gitpod-desktop
    code --install-extension gitpod.gitpod-remote-ssh
    code --install-extension kennydo.remote-tmux

    command -v rg
    if [[ $? == 0 ]]; then
      echo "found ripgrep - dep fot Todo-Tree satisfied"
      code --install-extension gruntfuggly.todo-tree
    fi

    command -v asdf
    if [[ $? == 0 ]]; then
        echo "found asdf environment manager: install vscode extension"
        code --install-extension nguyenngoclong.asdf
    fi

    command -v devbox
    if [[ $? == 0 ]]; then
      echo "found devbox environment manager: install vscode extension"
      code --install-extension jetpack-io.devbox
    fi

    echo "installing vscode skin"
    code --install-extension shalldie.background
}