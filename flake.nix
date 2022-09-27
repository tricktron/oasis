{
    description        = "oasis-dev-shell";
    inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-22.05";

    outputs = { self, nixpkgs }:
        let
            systems       = [ "aarch64-linux" ];
            forSystems    = f: nixpkgs.lib.genAttrs systems (system: f system);
        in
    {

        devShells = forSystems
        (system:
            let
                pkgs = nixpkgs.legacyPackages.${system}.pkgsStatic;
            in
            {
                default = pkgs.mkShell 
                {
                    nativeBuildInputs = with pkgs; 
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
