{
  description = "A Taka's interpretation of NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    walker.url = "github:abenz1267/walker";
    yazi.url = "github:sxyazi/yazi";
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
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
        base08 = "#e05151";
        base09 = "#dd8663";
        base0A = "#e0b070";
        base0B = "#d7eaa4";
        base0C = "#b1f2f5";
        base0D = "#71bde6";
        base0E = "#cf84eb";
        base0F = "#d3816a";
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

  nixConfig = {
    extra-substituters = [
      "https://yazi.cachix.org"
      "https://walker.cachix.org"
      "https://walker-git.cachix.org"
    ];
    extra-trusted-public-keys = [
      "yazi.cachix.org-1:Dcdz63NZKfvUCbDGngQDAZq6kOroIrFoyO064uvLh8k="
      "walker.cachix.org-1:fG8q+uAaMqhsMxWjwvk0IMb4mFPFLqHjuvfwQxE4oJM="
      "walker-git.cachix.org-1:vmC0ocfPWh0S/vRAQGtChuiZBTAe4wiKDeyyXM0/7pM="
    ];
  };
}