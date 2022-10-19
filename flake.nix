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
	        pkgs-host  = pkgs.pkgsCross.musl64;
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

            packages.oasis-qemu-initrd = pkgs.runCommand "build-rootfs"
            {
                __noChroot        = true;
                nativeBuildInputs = with pkgs; [ curl coreutils mount cpio  ];
                SSL_CERT_FILE     = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
            }
            ''
                curl -L -o rootfs.tar https://github.com/tricktron/oasis/releases/download/v1.0.0-alpha/rootfs-x86_64.tar
                curl -L -o etc.tar https://github.com/tricktron/oasis-etc/releases/download/v1.0.0-alpha/etc.tar
                tar -xvf rootfs.tar
                mkdir etc && tar -C etc -xvf etc.tar
                cp -r etc out/root.git
                mkdir out/root.git/dev
                mknod -m 622 out/root.git/dev/console c 5 1
                mknod -m 666 out/root.git/dev/null c 1 3
                mknod -m 666 out/root.git/dev/zero c 1 5
                mknod -m 666 out/root.git/dev/ptmx c 5 2
                mknod -m 666 out/root.git/dev/tty c 5 0
                mknod -m 444 out/root.git/dev/random c 1 8
                mknod -m 444 out/root.git/dev/urandom c 1 9
                chown -R root:root out/root.git
                chroot /bin/env -i PATH=/bin HOME=/root TERM="$TERM" PS1='(oasis chroot) \u:\w\$ ' /bin/ksh -l
                /libexec/applyperms
                /libexec/applyperms -d /etc
                chmod +r out/root.git/etc/doas.config
                mkdir $out
                cd out/root.git && find . | cpio --quiet -H newc -o | gzip -9 -n > $out/initrd.img
            '';

            packages.oasis-qemu-kernel-initrd = 
                let 
                    base_kernel  = pkgs.linuxKernel.kernels.linux_5_15;
                    oasis-kernel = pkgs.linuxPackages_custom
                    {
                        inherit (base_kernel) src;
                        version = "${base_kernel.version}";
                        configfile = ./oasis-qemu-initrd.config;
                        allowImportFromDerivation = true;
                    };
                in oasis-kernel.kernel;
            
            packages.oasis-qemu-kernel = 
                let 
                    base_kernel  = pkgs.linuxKernel.kernels.linux_5_15;
                    oasis-kernel = pkgs.linuxPackages_custom
                    {
                        inherit (base_kernel) src;
                        version = "${base_kernel.version}";
                        configfile = ./oasis-qemu.config;
                        allowImportFromDerivation = true;
                    };
                in oasis-kernel.kernel;

            packages.oasis-qemu-kernel-old = (pkgs.linuxKernel.kernels.linux_5_19.override
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
