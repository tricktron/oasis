{
    description               = "nix-install-dev-shell";
    inputs.flake-utils.url    = "github:numtide/flake-utils";
    inputs.nixpkgs.url        = "github:NixOS/nixpkgs";
    inputs.my-system.url      = "github:tricktron/my-system-configs";

    outputs = { self, nixpkgs, flake-utils, my-system }:
    flake-utils.lib.eachSystem
    [ 
        "aarch64-darwin"
        "x86_64-linux"
    ]
    (system:
        let
        pkgs = import nixpkgs
        {
            inherit system;
            config   =
            {
                allowUnfree = true;
            };
        };

        user = builtins.getEnv "USER";

        baseExtensions = if user == "tricktron"
            then my-system
                .darwinConfigurations
                .gurten
                .config
                .home-manager
                .users
                .${user}
                .programs
                .vscode
                .extensions
            else [];
        vscodeExtensions = with pkgs.vscode-extensions;
        [ 
            haskell.haskell

        ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace
        [
            {
                name       = "bats";
                publisher  = "jetmartin";
                version    = "0.1.9";
                sha256     = "sha256-utlEPLuBWabJkWcG1l9ICyUIXxx5ws6PKaU5hhUWfRU=";
            }
        ] ++ baseExtensions;
        in
        {
            devShells.default     = pkgs.mkShell
            {
               buildInputs = with pkgs;
               [
                   (vscode-with-extensions.override { inherit vscodeExtensions; })
                   (bats.withLibraries (p: [ p.bats-support p.bats-assert p.bats-file ]))
               ];
            };
        }
    );
}