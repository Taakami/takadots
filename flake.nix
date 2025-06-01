{
  description = "A Taka's interpretation of NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    # nur.url = "github:nix-community/NUR";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let 
      username = "taka";
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
      colorScheme = {
        base00 = "#171924";
        base01 = "#35394d";
        base02 = "#3c4054";
        base03 = "#4e5269";
        base04 = "#848aa6";
        base05 = "#adb5d6";
        base06 = "#d2d7ed";
        base07 = "#e2e8f9";
        base08 = "#bc4ad8";
        base09 = "#e65ec8";
        base0A = "#eb73df";
        base0B = "#c4a4eb";
        base0C = "#b1f2f5";
        base0D = "#71bde6";
        base0E = "#8e7df2";
        base0F = "#7463e4";
      };
    in
    {
    nixosConfigurations = {
      mars = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ 
            ./hosts/mars
          ];
          specialArgs = {
            host = "mars";
            inherit self inputs username colorScheme;
          };
        };
    };
  };
}