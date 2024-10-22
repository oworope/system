{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    helix
    git
    htop
    btop
    wget
    tmux
    pfetch
    fastfetch
    tree
    fd
    fzf
    ripgrep
    nil
    eza
    bat

    clang-tools
    clang
    gdb
    valgrind
    rustup

    cmake
    meson
    ninja
    pkg-config
  ];
}
