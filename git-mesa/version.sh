#!/bin/bash -e

mirror="http://http.debian.net/debian"

package_name="mesa"
debian_pkg_name="${package_name}"
package_version="22.1.0-git20210401.0"
package_source="${debian_pkg_name}_${package_version}.orig.tar.xz"
src_dir="${package_name}_${package_version}"

git_repo="https://gitlab.freedesktop.org/mesa/mesa"
git_sha="23f5e2edbd85b50cd8b26a3b1aa9bb3bfe1cf202"
reprepro_dir="m/${package_name}"
dl_path=""

debian_version="${package_version}-0"
debian_patch=""
debian_diff=""

bullseye_version="~bullseye+20220401"
