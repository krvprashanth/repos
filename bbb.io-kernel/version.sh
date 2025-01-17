#!/bin/bash -e

package_name="bbb.io-kernel"
debian_pkg_name="${package_name}"
package_version="1.20220824.0"
package_source=""
src_dir=""

git_repo=""
git_sha=""
reprepro_dir="b/${package_name}"
dl_path=""

debian_version="${package_version}-0"
debian_untar=""
debian_patch=""

clear_changelog="enable"

buster_version="~buster+20220824"
bullseye_version="~bullseye+20220824"
focal_version="~focal+20220824"
jammy_version="~jammy+20220824"
