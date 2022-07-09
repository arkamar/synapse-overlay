# Synapse overlay incubator

The purpose of this overlay was to prepare and polish `matrix-synapse` related ebuilds for pushing it to the main `::gentoo` overlay in PR https://github.com/gentoo/gentoo/pull/25776 and close related https://bugs.gentoo.org/608510 issue. The overaly served its purpose well, `net-im/synapse` is finally in `::gentoo`! There is probably no need to use this overlay anymore, however, it is still maintained.

## Remarks

- All ebuilds use new `PEP517`.
- Tests mostly work, with following exceptions (related ebuilds set `RESTRICT="test"`):
	- `dev-python/pymacaroons` - it requires `<dev-python/hypothesis-2.0.0` which is not available in `::gentoo` anymore.
	- `dev-python/frozendict` - most of tests pass, but 7 of 477 tests fail with py3.9 and 1 of 483 fails with py3.10. py3.11 is not supported yet.
- UID/GID in `acct-{user,group}/synapse` are set to `-1` in this overlay.
- `net-im/synapse` is usually released every 14 days and ebuild version bumps are pretty straight forward.

I wrote `synapse.initd` in order to make `net-im/synapse` package complete, it works, but I don't use OpenRC nor Systemd and it would most probably require some revisions.

Any help with this is welcome.

