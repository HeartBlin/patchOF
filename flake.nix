{
  inputs.nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";

  outputs = inputs: let
    forAllSystems = inputs.nixpkgs.lib.genAttrs [ "x86_64-linux" ];
  in {
    packages = forAllSystems (system: let
      pkgs = inputs.nixpkgs.legacyPackages.${system};
    in {
      default = pkgs.callPackage ./default.nix { };
    });
  };
}
