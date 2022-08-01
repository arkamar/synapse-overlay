# Synapse overlay incubator

The purpose of this overlay was to prepare and polish `matrix-synapse` related ebuilds for pushing it to the main `::gentoo` overlay in PR https://github.com/gentoo/gentoo/pull/25776 and close related https://bugs.gentoo.org/608510 issue. The overaly served its purpose well, `net-im/synapse` is finally in `::gentoo`! There is probably no need to use this overlay anymore, however, it is still maintained with release candidates and live ebuilds.

## Remarks

- All ebuilds use new `PEP517`.
- `dev-python/pymacaroons` - it requires `<dev-python/hypothesis-2.0.0` which is not available in `::gentoo` anymore, therefore, some tests are skipped.
- `net-im/synapse` is usually released every 14 days and ebuild version bumps are pretty straight forward.

I wrote `synapse.initd` in order to make `net-im/synapse` package complete, it works, but I don't use OpenRC and it would most probably require some revisions.

Any help with this is welcome.

