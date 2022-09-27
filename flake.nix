{
    description        = "oasis-dev-shell";
    inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-22.05";

    outputs = { self, nixpkgs }:
    {
        devShells = nixpkgs.lib.genAttrs 
        [ 
            "aarch64-linux"
        ] 
        (system:
            let
                pkgs = nixpkgs.legacyPackages.${system};
            in
            {
                default = pkgs.pkgsStatic.mkShell 
                {
                    nativeBuildInputs = with pkgs.pkgsStatic; 
                    [
                        bison
                        lua
                        ninja
                        curl
                        tzdata.out
                        tzdata.bin
                        libarchive
                    ];
                };
            }
        );
    };
}
