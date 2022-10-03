local sets = dofile(basedir..'/sets.lua')

return {
	-- build output directory
	builddir='out',

	-- install prefix
	prefix='',

	-- package/file selection
	fs={
                -- Each entry contains a list of packages, a list of patterns to
                -- include, and a list of patterns to exclude. If no patterns
                -- are specified, all files from the package are included.
		{sets.core, exclude={'^include/', '^lib/.*%.a$'}},

		-- You may also specify a list of patterns to include or exclude
		-- for any packages not matching any entries. If no patterns are
		-- specified, all files from the package are excluded.
		-- include={...}, exclude={...},
	},

	-- target toolchain and flags
	target={
		platform='aarch64-unknown-linux-musl-gcc',
		cflags='-Os -fPIE -pipe',
		ldflags='-s -static-pie',
        cc='aarch64-unknown-linux-musl-gcc',
        ar='aarch64-unknown-linux-musl-ar',
        as='aarch64-unknown-linux-musl-as',
        ld='aarch64-unknown-linux-musl-ld',
        objcopy='aarch64-unknown-linux-musl-objcopy',
	},

	-- host toolchain and flags
	host={
		cflags='-O2 -pipe',
		ldflags='',
        cc='aarch64-unknown-linux-musl-gcc',
        ar='aarch64-unknown-linux-musl-ar',
        as='aarch64-unknown-linux-musl-as',
        ld='aarch64-unknown-linux-musl-ld',
        objcopy='aarch64-unknown-linux-musl-objcopy',
	},

	-- output git repository
	repo={
		path='$builddir/root.git',
		flags='',
		tag='tree',
		branch='master',
	},

	-- GPU driver (possible_values: amdgpu intel nouveau)
	-- video_drivers={intel=true}
}
