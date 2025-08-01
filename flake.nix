{
  description = "A Taka's interpretation of NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
    nixcord = {
      url = "github:kaylorben/nixcord";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    yazi.url = "github:sxyazi/yazi";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    iwmenu.url = "github:e-tho/iwmenu";
    bzmenu.url = "github:e-tho/bzmenu";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    username = "taka";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      mars = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./hosts/mars
        ];
        specialArgs = {
          host = "mars";
          inherit self inputs username;
        };
      };
      saturne = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./hosts/saturne
        ];
        specialArgs = {
          host = "saturne";
          inherit self inputs username;
        };
      };
    };
  };
}
