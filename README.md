# vim-config
This is my vim config for development, still missing some key plugins that I would like to add.

Theme is inspired by the 2077 theme for vscode.

Personally use this with iTerm2 and Fira Code font face / ligatures enabled.

## Missing
- Code autocompletion is basic setup, needs tweaking for day to day work
- Some colors missing for js / ts keywords
- Haven't tested with a wide variety of languages yet

## Prerequisites
Requires vim 8+
```sh
brew install ripgrep
```

## Setup
Copy the vimrc file to `~/.vimrc` and copy the colors folder and coc-settings.json to `~/.vim/`.

Open up vim and run:

```
:PlugInstall // to install the plugins
:CocInstall coc-tsserver // to install the language server
```

## Commands
The leader key has been mapped to ,

| Command | Action |
| ------- | ------ |
| ,m      | Opens NERDTree |
| ,p      | Formats code with prettier |
| ,.      | Opens recent files buffer |
| ,f      | Fuzzy file search |


## Troubleshooting
Sometimes the coc installer will complain about invalid syntax when attempting to install the language servers.

To fix this we can run:
```
:echo coc#util#extension_root()."/package.json"
```

This should output a file name (in my environment this is `/Users/sgerrard/.config/coc/extensions/package.json`)
We can check this file for syntax errors, in my case this was a doubled up closing bracket.

This fix was sourced from: https://www.reddit.com/r/neovim/comments/jwhv85/certain_coc_extensions_not_installing/
