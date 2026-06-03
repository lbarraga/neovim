{
  description = "My Neovim config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    import-tree.url = "github:vic/import-tree";
  };

  outputs = {
    nixpkgs,
    nixvim,
    import-tree,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};

    nvim = nixvim.legacyPackages.${system}.makeNixvimWithModule {
      inherit pkgs;
      module = {
        imports = [
          (import-tree ./config)
        ];
      };
    };
  in {
    packages.${system}.default = nvim;
  };
}
