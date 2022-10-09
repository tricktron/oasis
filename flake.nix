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
                    FUSE_FS          = yes;
                };
            });

            packages.oasis-qemu-kernel = (pkgs.linuxKernel.kernels.linux_5_19.override
            {
                structuredExtraConfig = with pkgs.lib.kernel;
                {
                    BLK_DEV_INITRD      = yes;
                    RD_GZIP             = yes;
                    "64BIT"             = yes;
                    "9P_FS"             = yes;
                    ACPI                = yes;
                    BINFMT_ELF          = yes;
                    BINFMT_SCRIPT       = yes;
                    BLK_DEV             = yes;
                    BLK_DEV_LOOP        = yes;
                    DEVTMPFS            = yes;
                    DEVTMPFS_MOUNT      = yes;
                    HW_RANDOM           = yes;
                    IKCONFIG            = yes;
                    IKCONFIG_PROC       = yes;
                    INET                = yes;
                    IPV6                = yes;
                    NET                 = yes;
                    NETDEVICES          = yes;
                    NETLINK_DIAG        = yes;
                    NETWORK_FILESYSTEMS = yes;
                    NET_9P              = yes;
                    NET_CORE            = yes;
                    PCI                 = yes;
                    TMPFS               = yes;
                    UNIX                = yes;
                    
                    EXT4_FS             = yes;
                    FUSE_FS             = yes;
                    
                    HW_RANDOM_VIRTIO    = yes;
                    NET_9P_VIRTIO       = yes;
                    VIRTIO_BLK          = yes;
                    VIRTIO_CONSOLE      = yes;
                    VIRTIO_INPUT        = yes;
                    VIRTIO_MENU         = yes;
                    VIRTIO_NET          = yes;
                    VIRTIO_PCI          = yes;

                    AGP                 = yes;
                    HAS_DMA             = yes; 
                    DRM                 = yes;
                    DRM_FBDEV_EMULATION = yes;
                    DRM_VIRTIO_GPU      = yes;
                    FB                  = yes;
                    INPUT_EVDEV         = yes;
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
