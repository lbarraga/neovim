{
  description = "My Neovim config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = {
    nixpkgs,
    nixvim,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};

    nvim = nixvim.legacyPackages.${system}.makeNixvimWithModule {
      inherit pkgs;
      module = import ./config;
    };
  in {
    packages.${system}.default = nvim;
  };
}
