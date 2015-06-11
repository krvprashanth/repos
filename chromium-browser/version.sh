#!/bin/bash -e

#mirror="http://ftp.de.debian.org/debian"
mirror="http://ports.ubuntu.com"

package_name="chromium-browser"
debian_pkg_name="${package_name}"
package_version="43.0.2357.81"
package_source="${debian_pkg_name}_${package_version}.orig.tar.xz"
src_dir="chromium-${package_version}"

git_repo=""
git_sha=""
reprepro_dir="c/${package_name}"
dl_path="pool/universe/${reprepro_dir}/"

debian_version="${package_version}-0ubuntu1.1179"
debian_patch="${debian_pkg_name}_${package_version}-0ubuntu1.1179.debian.tar.xz"
debian_diff=""

jessie_version="~bpo80+20150611+1"
