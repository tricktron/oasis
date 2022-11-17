{
    description             = "oasis-dev-shell";
    nixConfig               =
    {
        extra-sbustituters        = [ "https://tricktron.cachix.org" ];
        extra-trusted-public-keys = 
        [ "tricktron.cachix.org-1:N1aBeQuELyEAOgvizaDC/qqFltwv7N7oSMaNozyDz6w=" ];
    };
    inputs.nixpkgs.url      = "github:NixOS/nixpkgs";
    inputs.flake-utils.url  = "github:numtide/flake-utils";

    outputs                 = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachSystem [ "aarch64-linux" "x86_64-linux" ]
    (
        system:
        let
            pkgs       = nixpkgs.legacyPackages.${system}.pkgs;
	        pkgs-host  = pkgs.pkgsCross.musl64;
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
            packages = 
            {
                oasis-zen-kernel         = pkgs.linuxKernel.kernels.linux_zen;
                oasis-kernel             = pkgs.symlinkJoin 
                {
                    name  = "oasis-kernel";
                    paths = with pkgs; 
                    [ 
                        (linuxKernel.kernels.linux_6_0.override
                        {
                           structuredExtraConfig = with pkgs.lib.kernel;
                           {
                                ACPI_APEI                    = yes;
                                PSTORE_ZSTD_COMPRESS         = yes;
                                PSTORE_ZSTD_COMPRESS_DEFAULT = yes;
                           }; 
                        })
                        linux-firmware
                        alsa-firmware 
                        wireless-regdb
                    ]; 
                };
                extra-bin                = pkgs-host.pkgsStatic.symlinkJoin
                {
                    name = "extra-bin";
                    paths = with pkgs-host.pkgsStatic;
                    [
                        kmod
                    ];
                };

                nixClosureInfo           = pkgs-host.pkgsStatic.closureInfo
                {
                    rootPaths = pkgs-host.pkgsStatic.nix;
                };

                bootstrapNix             = 
                let
                    getDepsPath = drv: map (outName: drv.${outName}) drv.meta.outputsToInstall;
                    nix         = pkgs-host.pkgsStatic.nix;
                    closure     = pkgs.closureInfo { rootPaths = nix; };
                in  pkgs.runCommand "nix-${nix.version}.tar.xz" {} 
                ''
                    mkdir package
                    cp ${closure}/registration package/reginfo
                    chmod -R +w package
                    dir=nix-${nix.version}
                    tar cvJf $out \
                      --absolute-names \
                      --mode=u+rw,uga+r \
                      --transform "s,$NIX_STORE,$dir/store,S" \
                      --transform "s,package,$dir," \
                      package \
                      $(cat ${closure}/store-paths)
                '';

                oasis-qemu-kernel-initrd = 
                let 
                    base_kernel  = pkgs.linuxKernel.kernels.linux_5_15;
                    oasis-kernel = pkgs.linuxPackages_custom
                    {
                        inherit (base_kernel) src;
                        version    = "${base_kernel.version}";
                        configfile = ./oasis-qemu-initrd.config;
                        allowImportFromDerivation = true;
                    };
                in oasis-kernel.kernel;
            
                oasis-qemu-kernel        = 
                let 
                    base_kernel  = pkgs.linuxKernel.kernels.linux_5_15;
                    oasis-kernel = pkgs.linuxPackages_custom
                    {
                        inherit (base_kernel) src;
                        version    = "${base_kernel.version}";
                        configfile = ./oasis-qemu.config;
                        allowImportFromDerivation = true;
                    };
                in oasis-kernel.kernel;
            };

            devShells =
            {
                default    = pkgs-host.mkShell 
                {
                    nativeBuildInputs = oasis-deps;
                };

                grub2_bios = pkgs.mkShell
                {
                    buildInputs = with pkgs;
                    [
                        grub2
                        xorriso
                    ];
                };

                grub2_efi = pkgs.mkShell
                {
                    buildInputs = with pkgs;
                    [
                        grub2_efi
                        xorriso
                        mtools
                    ];
                };
            };
        }
    );
}
