### Introduction

A starting point for neovim that is:

* Small (~325 lines)
* Single-file
* Documented
* Modular

Kickstart targets *only* the latest stable neovim release (0.6) and the nightly.

This repo is meant to be used as a starting point for a user's own configuration; remove the things you don't use and add what you miss. This configuration serves as the reference configuration for the [lspconfig wiki](https://github.com/neovim/nvim-lspconfig/wiki).

See the [wiki](https://github.com/nvim-lua/kickstart.nvim/wiki) for additional tips, tricks, and recommended plugins.

### Installation
* Backup your previous configuration
* Copy and paste the kickstart.nvim `init.lua` into `$HOME/.config/nvim/init.lua`
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
$ git clone https://github.com/nvim-lua/kickstart.nvim.git && cd kickstart.nvim
```

3. Start the shell
```bash
$ nix-shell 
$ nix develop # if on nixUnstable
```

### Contribution

Pull-requests are welcome. The goal of this repo is not to create a neovim configuration framework, but to offer a starting template that shows, by example, available features in neovim. Some things that will not be included:

* Automatic management of language server installation
* Custom language server configuration (null-ls templates)
* Theming beyond a default colorscheme necessary for LSP highlight groups
* Lazy-loading. Kickstart.nvim should start within 50 ms on modern hardware. Please profile and contribute to upstream plugins to optimize startup time instead.

Each PR, especially those which increase the line count, should have a description as to why the PR is necessary.
