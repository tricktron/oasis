{
    description             = "oasis-dev-shell";
    nixConfig               =
    {
        extra-sbustituters        = [ "https://tricktron.cachix.org" ];
        extra-trusted-public-keys = 
        [ "tricktron.cachix.org-1:N1aBeQuELyEAOgvizaDC/qqFltwv7N7oSMaNozyDz6w=" ];
    };
    inputs.nixpkgs.url      = "github:NixOS/nixpkgs/release-22.05";
    inputs.nixpkgs-fork.url = "github:tricktron/nixpkgs/develop";
    inputs.flake-utils.url  = "github:numtide/flake-utils";


    outputs                 = { self, nixpkgs, nixpkgs-fork, flake-utils }:
    flake-utils.lib.eachSystem [ "aarch64-linux" "x86_64-linux" ]
    (
        system:
        let
            pkgs       = nixpkgs.legacyPackages.${system}.pkgs;
	        pkgs-host  = pkgs.pkgsCross.aarch64-multiplatform-musl;
            pkgs-fork  = nixpkgs-fork.legacyPackages.${system}.pkgs;
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
            packages.oasis-kernel = (pkgs.linuxKernel.kernels.linux_zen.override
            {
                structuredExtraConfig = with pkgs.lib.kernel;
                {
                    BLK_DEV_INITRD   = yes;
                    RD_GZIP          = yes;
                    TMPFS            = yes;
                    SYSFS            = yes;
                    PROC_FS          = yes;
                    DEVTMPFS         = yes;
                    DEVTMPFS_MOUNT   = yes;
                };
            });
	        defaultPackage    = pkgs.symlinkJoin
            {
                name  = "oasis-live-cd";
                paths =
                [
                    pkgs-host.pkgsStatic.linuxKernel.kernels.linux_zen
	                pkgs-host.pkgsStatic.bashInteractive
	                pkgs-host.pkgsStatic.squashfsTools
	                pkgs-host.pkgsStatic.zip
                    pkgs-host.pkgsStatic.gnugrep
                    pkgs-host.pkgsStatic.findutils
                    pkgs-host.pkgsStatic.kmod
                    pkgs-host.pkgsStatic.coreutils
	                pkgs-fork.pkgsCross.musl64.pkgsStatic.cdrkit
                ];
            };

            devShells.default = pkgs-host.mkShell 
            {
                nativeBuildInputs = oasis-deps;
            };
        }
    );
}
