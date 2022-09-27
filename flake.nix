{
    description        = "oasis-dev-shell";
    inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-22.05";
    inputs.nixpkgs-fork.url   = "github:tricktron/nixpkgs/develop";

    outputs = { self, nixpkgs, nixpkgs-fork }:
        let
            systems       = [ "aarch64-linux" ];
            forSystems    = f: nixpkgs.lib.genAttrs systems (system: f system);
        in
    {

        devShells = forSystems
        (system:
            let
                pkgs      = nixpkgs.legacyPackages.${system}.pkgsStatic;
                pkgs-fork = nixpkgs-fork.legacyPackages.${system}.pkgsStatic;
            in
            {
                default = pkgs.mkShell 
                {
                    nativeBuildInputs = with pkgs; 
                    [
                        bison
                        lua
                        samurai
                        curl
                        tzdata.out
                        tzdata.bin
                    ] ++ [ pkgs-fork.pax ];
                };
            }
        );
    };
}
