### Introduction

A starting point for neovim that is:

* Small (~ 350 lines)
* Single-file
* Documented

This repo is meant to be used as a starting point for a user's own configuration; remove the things you don't use and add what you miss.

See the [wiki](https://github.com/mjlbach/defaults.nvim/wiki) for additional tips, tricks, and recommended plugins.

### Installation
* Backup your previous configuration
* Copy and paste the init.lua lua into `$HOME/.config/nvim/init.lua`
* start neovim (`nvim`) and run `:PackerInstall`, ignore any error message about missing plugins, `:PackerInstall` will fix that shortly.
* restart neovim

### Running via nix (optional)

Nix is a functional package manager, that affords reproducibility similar to a container. This repo bundles a nix-shell, which includes the latest version of neovim, along with several language servers. This is entirely optional, and is just a convenient way to manage language-servers and other tools (fd, ripgrep, etc.).

1. Install nix
```bash
$ sh <(curl -L https://nixos.org/nix/install) --daemon
```

2. Clone this repository:
```bash
$ git clone https://github.com/mjlbach/defaults.nvim.git && cd defaults.nvim
```

3. Start the shell
```bash
$ nix-shell 
$ nix develop # if on nixUnstable
```

### Contribution

Pull-requests are welcome. The goal of this repo is not to create a neovim configuration framework, but to offer a starting template which instructs users on the available features. Some things that will not be included:

* Automatic management of language server installation (for that, there is the nix shell)
* Custom language server configuration (efm templates)
* Theming beyond a default colorscheme necessary for LSP highlight groups

Each PR, especially those which increase the line count, should have a description as to why the PR is necessary.
