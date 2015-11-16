#!/bin/bash -e

mirror="http://ftp.de.debian.org/debian"

package_name="nodejs"
debian_pkg_name="${package_name}"
package_version="4.2.2~dfsg"
package_source="${package_name}_${package_version}.orig.tar.gz"
src_dir="node-v4.2.2"

git_repo=""
git_sha=""
reprepro_dir="n/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}-1"
debian_untar="${package_name}_${debian_version}.debian.tar.xz"
debian_patch=""

jessie_version="~bpo80+20151116+1"
