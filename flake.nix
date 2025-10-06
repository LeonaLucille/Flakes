{
  description = "WHA";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ashell.url = "github:MalpenZibo/ashell";

    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    stylix.url = "github:danth/stylix/release-25.05";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {nixpkgs, ...} @ inputs: let
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
        modules = [./machines/TUX];
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
