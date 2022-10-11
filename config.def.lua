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
		{sets.core,    exclude={'^include/', '^lib/.*%.a$'}},
		{sets.extra,   exclude={'^include/', '^lib/.*%.a$'}},
		{sets.devel,   exclude={'^include/', '^lib/.*%.a$'}},
		{sets.media,   exclude={'^include/', '^lib/.*%.a$'}},
		{sets.net,     exclude={'^include/', '^lib/.*%.a$'}},
		{sets.desktop, exclude={'^include/', '^lib/.*%.a$'}},

		-- You may also specify a list of patterns to include or exclude
		-- for any packages not matching any entries. If no patterns are
		-- specified, all files from the package are excluded.
		-- include={...}, exclude={...},
	},

	-- target toolchain and flags
	target={
		platform='x86_64-unknown-linux-musl',
		cflags='-Os -fPIE -pipe -Wno-format-security',
		ldflags='-s -static-pie',
        cc='x86_64-unknown-linux-musl-cc',
        ar='x86_64-unknown-linux-musl-ar',
        as='x86_64-unknown-linux-musl-as',
        ld='x86_64-unknown-linux-musl-ld',
        objcopy='x86_64-unknown-linux-musl-objcopy',
	},

	-- host toolchain and flags
	host={
		cflags='-O2 -pipe',
		ldflags='',
        cc='x86_64-unknown-linux-musl-cc',
        ar='x86_64-unknown-linux-musl-ar',
        as='x86_64-unknown-linux-musl-as',
        ld='x86_64-unknown-linux-musl-ld',
	},

	-- output git repository
	repo={
		path='$builddir/root.git',
		flags='',
		tag='tree',
		branch='master',
	},

	-- GPU driver (possible_values: amdgpu intel nouveau)
	video_drivers={amdgpu=true}
}
