pkg_name=docker-compose
pkg_origin=damacus
pkg_version=1.19.0
pkg_maintainer="Webb Agile Solutions Ltd. <dan.webb@damacus.io>"
pkg_license=('MIT')
pkg_upstream_url=https://getcomposer.org/
pkg_description="Define and run multi-container applications with Docker"
pkg_source=https://github.com/docker/compose/releases/download/${pkg_version}/${pkg_name}-Linux-x86_64
pkg_filename=${pkg_name}
pkg_shasum=78734996d716113f9f9716d0b5064166e9475835e5000fd01b0480d19e1f7372
pkg_build_deps=(core/hab-pkg-export-docker)
pkg_deps=(core/python)
pkg_bin_dirs=(bin)

do_unpack(){
  return 0
}

do_build() {
  return 0
}

do_check() {
  "${pkg_filename}" --version 2>&1 | grep -q ${pkg_version}
}

do_install() {
  install -vDm755 "../${pkg_filename}" "${pkg_prefix}/bin/${pkg_filename}"

  chmod +x "${pkg_prefix}/bin/${pkg_filename}"
}
