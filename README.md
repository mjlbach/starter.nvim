### Introduction

A small, featureful, and documented starting point for neovim. This config will always be:

* Small
* Single-file
* Documented

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

Pull-requests are welcome, but keep in mind that the goal of this repo is not to create a neovim configuration framework, but instead to offer a starting template which gives a decent experience out of the box. Each PR, especially those which increase the line count, should have a description as to why the PR is necessary.
