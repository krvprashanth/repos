#!/bin/bash -e

#https://github.com/ArduPilot/ardupilot
#https://github.com/ArduPilot/ardupilot/tree/Rover-3.4

package_name="ardupilot-rover-3.4-pocket"
debian_pkg_name="${package_name}"
package_version="3.4.1-git20180612"
package_source="${package_name}_${package_version}.orig.tar.xz"
src_dir="${package_name}_${package_version}"

git_repo="https://github.com/ArduPilot/ardupilot.git"
git_sha="3ee064da5d6b4872d8f8a8a3d165470c93a37e1e"
git_branch="Rover-3.4"
reprepro_dir="a/${package_name}"
dl_path=""

debian_version="${package_version}-0rcnee0"
debian_patch=""
debian_diff=""

jessie_version="~jessie+20180612"
stretch_version="~stretch+20180612"
buster_version="~buster+20180612"
bionic_version="~bionic+20180612"
