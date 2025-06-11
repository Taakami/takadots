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
    # walker.url = "github:abenz1267/walker";
    yazi.url = "github:sxyazi/yazi";
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # sherlock = {
    #   url = "github:Skxxtz/sherlock";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
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
            inherit self inputs username;
          };
        };
    };
  };

  # nixConfig = {
  #   extra-substituters = [
  #     "https://yazi.cachix.org"
  #     # "https://walker.cachix.org"
  #     # "https://walker-git.cachix.org"
  #   ];
  #   extra-trusted-public-keys = [
  #     "yazi.cachix.org-1:Dcdz63NZKfvUCbDGngQDAZq6kOroIrFoyO064uvLh8k="
  #     # "walker.cachix.org-1:fG8q+uAaMqhsMxWjwvk0IMb4mFPFLqHjuvfwQxE4oJM="
  #     # "walker-git.cachix.org-1:vmC0ocfPWh0S/vRAQGtChuiZBTAe4wiKDeyyXM0/7pM="
  #   ];
  # };
}