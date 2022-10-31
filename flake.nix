{
    description             = "oasis-dev-shell";
    nixConfig               =
    {
        extra-sbustituters        = [ "https://tricktron.cachix.org" ];
        extra-trusted-public-keys = 
        [ "tricktron.cachix.org-1:N1aBeQuELyEAOgvizaDC/qqFltwv7N7oSMaNozyDz6w=" ];
    };
    inputs.nixpkgs.url      = "github:NixOS/nixpkgs/release-22.05";
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
                oasis-zen-kernel         = pkgs.linuxKernel.kernels.linux_zen.override
                (
                    {
                        autoModules        = false; 
                        preferBuiltin      = true;
                        ignoreConfigErrors = true;
                    }
                );
                oasis-kernel             = pkgs.linux;
            
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
