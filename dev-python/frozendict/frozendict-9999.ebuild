# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..10} )

inherit distutils-r1 git-r3

DESCRIPTION="A simple immutable mapping for python"
HOMEPAGE="
	https://github.com/Marco-Sulla/python-frozendict/
	https://pypi.org/project/frozendict/
"
EGIT_REPO_URI="https://github.com/Marco-Sulla/python-frozendict/"

LICENSE="MIT"
SLOT="0"

distutils_enable_tests pytest

python_test() {
	cd "${T}" || die
	epytest "${S}/test"
}
