{ pkgs, ... }:

{
  imports = [
    ./ghostty.nix
    ./zsh.nix
    ./bat.nix
    ./bottom.nix
    ./chromium.nix
    ./direnv.nix
    ./git.nix
    ./neovim.nix
    ./yazi.nix
    ./tmux.nix
    ./oh-my-posh.nix
    ./fenix.nix
  ];

  home.packages = with pkgs; [
    discord
    slack
  ];
}
