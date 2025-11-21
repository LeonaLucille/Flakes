{
  description = "WHA";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ashell.url = "github:MalpenZibo/ashell";

    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nix-ld.url = "github:Mic92/nix-ld";
    nix-ld.inputs.nixpkgs.follows = "nixpkgs";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      # IMPORTANT: we're using "libgbm" and is only available in unstable so ensure
      # to have it up-to-date or simply don't specify the nixpkgs input
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix/release-25.05";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {nixpkgs, nix-ld, ...} @ inputs: let
    username = "ltechel";
    system = "x86_64-linux";
    host = "TUX";
  in {
    nixosConfigurations = {
      TUX = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
        };
        modules = [
          ./machines/TUX
         # nix-ld.nixosModules.nix-ld
          ];
      };
      PC = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
        };
        modules = [./machines/PC];
      };
    };
  };
}
