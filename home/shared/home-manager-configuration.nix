{
  programs.home-manager.enable = true;

  home.stateVersion = "23.05";

  nix.settings.auto-optimise-store = true;

  nix.gc = {
    automatic = true;
    frequency = "daily";
    options = "--delete-older-than 7d";
  };
}
