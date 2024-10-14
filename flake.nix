{
  description = "oworope's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # home-manager = {
    #   url = "github:nix-community/home-manager";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = { self, nixpkgs, niri, ... }@inputs: {
    overlays = { niri = niri.overlays.niri; };
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./configuration.nix
        ./niri.nix
        ./user.nix
        ./dev.nix
        ./system.nix
        niri.nixosModules.niri
        # inputs.home-manager.nixosModules.default
      ];
    };
  };
}
