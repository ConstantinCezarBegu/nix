{ pkgs, ... }:

{
  imports = [
    ./../programs/ghostty.nix
    ./../programs/zsh.nix
    ./../programs/bat.nix
    ./../programs/bottom.nix
    ./../programs/chromium.nix
    ./../programs/direnv.nix
    ./../programs/git.nix
    ./../programs/neovim.nix
    ./../programs/yazi.nix
    ./../programs/tmux.nix
    ./../programs/oh-my-posh.nix
    ./../programs/fenix.nix
  ];

  home.packages = with pkgs; [
    slack
  ];

}
