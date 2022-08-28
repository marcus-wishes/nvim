# Markus' NVIM Setup
Heavily inspired by [CraftzDog](https://github.com/craftzdog/dotfiles-public/tree/master/.config/nvim), and [Allaman](https://github.com/Allaman/nvim).
Focussed on Typescript, React.
Uses Github Copilot.

Clone this repository into ~/.config/nvim
```
git clone https://github.com/marcus-wishes/nvim.git ~/.config/nvim
```

Then run:
```
nvim
:PackerSync
:q
nvim
:PackerInstall
:q
```

## Additional Setup Required

### TreeSitter

#### Prerequirements
TreeSitter requires its grammar to compile, therefore we require to install a c++ compiler and linker. 
I.e. for  WSL Ubuntu:

```
sudo apt-get install build-essentials
```

#### Language Support
Use `:TSInstall typescript` to install the Treesitter language syntax support for Typescript, and `:TSInstallInfo` to get an overview over the installed languages and the other available ones, and install as required.

### Typescript Language Server
Neovim has a built in support for the language server protocol (LSP), but we need to install the typescript language server, and it required Node.

For node follow the official [instructions](https://nodejs.org/en/). 

After installing Node install the build-essentials or equivalent:

```
sudo npm i -g typescript typescript-language-server
```

## Github Copilot
Copilot requires you to authenticate its usage first. For this edit the `~/.config/nvim/lua/plugins.lua` file and uncomment the `use 'github/copilot.vim'` line. 
Run `:PackerSync`, exit nvim, enter it again and run `:PackerInstall`, exit it again, enter it and run `:Copilot`. Follow the steps appearing.

After copilot is authenticated, comment out the `use 'github/copilor.vim'` again to avoid its constant inline-suggestions, but to keep them within cmp.

## Mason
Install additional tooling with `:Mason`.
I.g. Prettier.


