{
    description             = "oasis-dev-shell";
    nixConfig              =
    {
        extra-sbustituters        = [ "https://tricktron.cachix.org" ];
        extra-trusted-public-keys = 
        [ "tricktron.cachix.org-1:N1aBeQuELyEAOgvizaDC/qqFltwv7N7oSMaNozyDz6w=" ];
    };
    inputs.nixpkgs.url      = "github:NixOS/nixpkgs/release-22.05";
    inputs.nixpkgs-fork.url = "github:tricktron/nixpkgs/develop";
    inputs.flake-utils.url  = "github:numtide/flake-utils";


    outputs = { self, nixpkgs, nixpkgs-fork, flake-utils }:
    flake-utils.lib.eachSystem [ "aarch64-linux" ]
    (
        system:
        let
            pkgs       = nixpkgs.legacyPackages.${system}.pkgsStatic;
            pkgs-fork  = nixpkgs-fork.legacyPackages.${system}.pkgsStatic;
            oasis-deps = with pkgs;
            [
                bison
                lua
                samurai
                curl
                tzdata.out
                tzdata.bin
            ] ++ [ pkgs-fork.pax ];
        in
        {
            devShells.default = pkgs.mkShell 
            {
                nativeBuildInputs = oasis-deps;
            };
        }
    );
}
