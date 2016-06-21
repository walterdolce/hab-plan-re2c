pkg_bin_dirs=(bin)
pkg_build_deps=(core/zlib core/coreutils core/autoconf core/automake core/libtool core/make core/m4 core/gcc core/bison core/flex core/pkg-config core/libxml2 core/bzip2 core/patchelf core/glibc core/imagemagick core/gcc-libs)
pkg_deps=()
#pkg_dirname=php-src-php-7.0.7
#pkg_expose=(80, 443, 5555)
pkg_filename=re2c-0.16.tar.gz
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)
pkg_license=('UNLICENSED')
pkg_origin=walterdolce
pkg_maintainer="Walter Dolce <walterdolce@gmail.com>"
pkg_name=re2c
pkg_shasum=48c12564297641cceb5ff05aead57f28118db6277f31e2262437feba89069e84
pkg_source=https://github.com/skvadrik/re2c/releases/download/0.16/re2c-0.16.tar.gz
pkg_svc_group=$pkg_svc_user
pkg_svc_run=""
pkg_svc_user=root
pkg_version=0.16
pkg_interpreters=()

do_build() {
  ./configure
  make
}

do_install() {
  make install
}