# Synapse overlay incubator

The purpose of this overlay is to prepare and polish `matrix-synapse` related ebuilds for pushing it to the main `::gentoo` overlay in PR https://github.com/gentoo/gentoo/pull/25776. It is related to the https://bugs.gentoo.org/608510 issue.

## Remarks

- All ebuilds use new `PEP517`.
- Tests mostly work, with following exceptions:
	- `dev-python/pymacaroons` - it requires `<dev-python/hypothesis-2.0.0` which is not available in `::gentoo` anymore.
	- `dev-python/frozendict` - most of tests pass, but 7 of 477 tests fail with py3.9 and 1 of 483 fails with py3.10. py3.11 is not supported yet.
	- `net-im/synapse` - most of tests pass, only few fail `Ran 2469 tests (failures=3, errors=3, skipped=156)`.
- UID/GID in `acct-{user,group}/synapse` are set to `-1` in this overlay.
- `net-im/synapse` is usually released every 14 days and ebuild version bumps are pretty straight forward.

I wrote `synapse.initd` in order to make `net-im/synapse` package complete, it works, but I don't use OpenRC nor Systemd and it would most probably require some revisions.

Any help with this is welcome.

