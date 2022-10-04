{
    description             = "oasis-dev-shell";
    nixConfig              =
    {
        extra-sbustituters        = [ "https://tricktron.cachix.org" ];
        extra-trusted-public-keys = 
        [ "tricktron.cachix.org-1:N1aBeQuELyEAOgvizaDC/qqFltwv7N7oSMaNozyDz6w=" ];
    };
    inputs.nixpkgs.url      = "github:NixOS/nixpkgs/release-22.05";
    inputs.flake-utils.url  = "github:numtide/flake-utils";


    outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachSystem [ "aarch64-linux" "x86_64-linux" ]
    (
        system:
        let
            pkgs       = nixpkgs.legacyPackages.${system}.pkgs;
            pkgs-host  = pkgs.pkgsCross.aarch64-multiplatform-musl;
            oasis-deps = with pkgs;
            [
                bison
                lua
                samurai
                curl
                tzdata.out
                tzdata.bin
                wayland
                nasm
                pax
            ];
        in
        {
            devShells.default = pkgs-host.mkShell 
            {
                nativeBuildInputs = oasis-deps;
            };
        }
    );
}
