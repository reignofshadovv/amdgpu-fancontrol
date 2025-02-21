# Maintainer: Michael Serajnik <m at mser dot at>
pkgname=amdgpu-fancontrol-git
_pkgname=amdgpu-fancontrol
pkgver=1
pkgrel=1
pkgdesc="A simple bash script to control the fan speed of AMD graphics cards"
arch=("any")
url="https://github.com/reignofshadovv/${_pkgname}/"
license=("GPL3")
depends=("bc" "systemd")
provides=("amdgpu-fancontrol")
conflicts=("amdgpu-fancontrol")
backup=("etc/amdgpu-fancontrol.cfg")
source=("${_pkgname}::git+https://github.com/reignofshadovv/amdgpu-fancontrol")
md5sums=("SKIP")

pkgver() {
  cd "${srcdir}/${_pkgname}"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  cd "$srcdir/$_pkgname"
  install -Dm755 "amdgpu-fancontrol.sh" "$pkgdir/usr/bin/amdgpu-fancontrol"
  install -Dm644 "etc-amdgpu-fancontrol.cfg" "$pkgdir/etc/amdgpu-fancontrol.cfg"
  install -Dvm644 "amdgpu-fancontrol.service" "$pkgdir/usr/lib/systemd/system/amdgpu-fancontrol.service"
}
post_install() {
  echo -e "amdgpu-fancontrol need to be configured before being started. For further information, read the following wiki page: https://wiki.archlinux.org/index.php/Fan_speed_control#fancurve_script"
  echo -e "\033[1;31mPlease don't just run it naively and keep in mind that nobody not responsible for failures.\033[0m"
}
