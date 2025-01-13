{
  description = "nix-configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
    homebrew-bundle = {
      url = "github:homebrew/homebrew-bundle";
      flake = false;
    };
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    agenix.url = "github:ryantm/agenix";
    fenix.url = "github:nix-community/fenix";
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    stylix.url = "github:danth/stylix";
    mac-app-util.url = "github:hraban/mac-app-util";
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      nix-darwin,
      nix-homebrew,
      homebrew-core,
      homebrew-cask,
      homebrew-bundle,
      home-manager,
      agenix,
      ...
    }:
    let
      globalModules = [
        { system.configurationRevision = self.rev or self.dirtyRev or null; }
        {
          nixpkgs.overlays = [
            inputs.fenix.overlays.default
            inputs.neovim-nightly-overlay.overlays.default
          ];
        }
      ];
      globalModulesMacos = globalModules ++ [
        ./module/darwin
        inputs.mac-app-util.darwinModules.default
        agenix.darwinModules.default
        inputs.stylix.darwinModules.stylix
        nix-homebrew.darwinModules.nix-homebrew
        {
          nix-homebrew = {
            enable = true;
            user = "constantinbegu";
            mutableTaps = false;

            taps = {
              "homebrew/homebrew-core" = homebrew-core;
              "homebrew/homebrew-cask" = homebrew-cask;
              "homebrew/homebrew-bundle" = homebrew-bundle;
            };

          };
        }
        home-manager.darwinModules.home-manager
        { home-manager.sharedModules = [ inputs.mac-app-util.homeManagerModules.default ]; }
      ];
      macosPersonal = globalModulesMacos ++ [
        { home-manager.users.constantinbegu = import ./home/mac-os-personal; }
      ];
      globalModulesNixos = globalModules ++ [
        ./module/nix-os
      ];
    in
    {
      # Build darwin flake using:
      # $ darwin-rebuild build --flake .#simple
      darwinConfigurations."mac_os_personal" = nix-darwin.lib.darwinSystem {
        modules = macosPersonal;
        specialArgs = { inherit nix-homebrew agenix; };
      };
    };
}
