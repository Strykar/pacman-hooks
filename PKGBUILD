# Maintainer: Strykar <2946372+Strykar@users.noreply.github.com>

pkgname=signald-git
pkgname=pacman-hooks-strykar-git
pkgver=r44.580de45
pkgrel=1
pkgdesc='Various personal Pacman hooks'
arch=('x86_64')
_gitname='pacman-hooks'
url="https://github.com/strykar/${_gitname}"
license=('GPL')
depends=('git' 'pacman-contrib' 'reflector')
source=("git+https://github.com/strykar/${_gitname}")
md5sums=('SKIP')

pkgver() {
    cd "${srcdir}/${_gitname}"
    printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
    cd "${srcdir}/${_gitname}"

    install -Dm 644 -t "${pkgdir}/usr/share/libalpm/hooks" nvidia/nvidia-keylase.hook
}
