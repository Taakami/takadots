{
  description = "A Taka's interpretation of NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # nur.url = "github:nix-community/NUR";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    nix-colors.url = "github:misterio77/nix-colors";
  };

  outputs = { self, nixpkgs, nix-colors, ... }@inputs:
    let 
      username = "taka";
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
      colorScheme = nix-colors.lib.schemeFromYAML "takami" (builtins.readFile ./assets/color-scheme.yaml);
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