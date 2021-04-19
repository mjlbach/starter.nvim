### Introduction

A starting point for neovim that is:

* Small (~ 300 lines)
* Single-file 
* Documented 

This template is somewhat opinionated (default keymaps, some utility functions) and not the "most" minimal starting point. The point of this template is that a (new) user will read through it (which given its size, should be quick), use it as a base, and modify it as they please. If you choose to use it "as-is", it will be a complete experience. Some things you may want to remove (in rough decreasing order of controversy):

* vim-polyglot					   -- Collection of sensible settings for various languages (runtime files for neovim get very out of date between releases)
* vim-gutentags					   -- Automatic tags management (not every language server supports workspace symbols, and in practice it's much slower than ctags to first index)
* vim-vinegar              -- File browser (netrw) improvements
* vim-repeat  				     -- More exhaustive '.'-repeats (this is useful in combination with vim-surround for example)
* vim-surround             -- "Surround text with" actions
* vim-sleuth 						   -- Detects and sets indentation settings from the current file

* Utility functions        -- There are a couple custom functions (disabling indent lines for copy/paste)
* Default language servers -- rust-analyzer, clangd, tsserver, and pyright are enabled by default
* Key bindings					   -- There are approximately 43 custom keybindings, these are set by default so the configuration is usable out of the box, but can be changed

File or comment on an open issue if you feel strongly these should not be included, but none appreciably impact startup time.

### Running via nix

Nix is a purely functional package manager, that affords reproducibility similar to a container (albeit with a very different mechanism). This repo bundles a nix-shell, which includes the latest version of neovim, along with several language servers.

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

Pull-requests are welcome, but keep in mind that the goal of this repo is not to create a neovim configuration framework, but instead to offer a starting template which gives a decent experience out of the box. Some things that will not be included:

* Automatic management of language server installation (for that, there is the nix shell)
* Custom language server configuration (efm templates)
* Theming beyond a default colorscheme necessary for LSP highlight groups

Each PR, especially those which increase the line count, should have a description as to why the PR is necessary.
