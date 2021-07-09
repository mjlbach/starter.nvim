### Introduction

A starting point for neovim that is:

* Small (~ 300 lines)
* Single-file
* Documented

This repo is meant to be used as a starting point for a user's own configuration. Some things you may want to remove (in rough decreasing order of controversy):

* vim-gutentags					   -- Automatic tags management (not every language server supports workspace symbols, ctags is extremely fast and works well for polyglot projects)
* Utility functions        -- There are a couple custom functions (disabling indent lines for copy/paste)
* Default language servers -- rust-analyzer, clangd, tsserver, and pyright are enabled by default
* Key bindings					   -- There are approximately 40 custom keybinding

See the [wiki](https://github.com/mjlbach/defaults.nvim/wiki) for additional tips, tricks, and recommended plugins.

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
