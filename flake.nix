{
  description = "Resume";
  inputs = { nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable"; };
  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages."${system}";
    in {
      devShell."${system}" = # architecture must be specified for devShell
        pkgs.mkShell {
          name = "resume";
          buildInputs = with pkgs; [ texlive.combined.scheme-medium ];
        };
    };
}
