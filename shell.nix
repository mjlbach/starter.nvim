{ pkgs ? import <nixpkgs> {
    overlays = [
      (import (builtins.fetchTarball {
        url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
      }))
    ];
  }
}:
with pkgs;
mkShell {
  buildInputs = [
    neovim-nightly
    nodePackages.diagnostic-languageserver
    nodePackages.json-server
    nodePackages.pyright
    rnix-lsp
    rust-analyzer
    clang-tools
    (lib.optional pkgs.stdenv.isLinux sumneko-lua-language-server)
  ];

  shellHook = ''
    alias nvim="nvim -u $(pwd)/init.lua"
  '';
}
