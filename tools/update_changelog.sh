#!/bin/bash -e

. version.sh

DIR="$PWD"

run () {
	wfile="${DIR}/suite/${suite}/debian/new"

	if [ "x${debian_version}" = "x" ] ; then
		if [ "x${epoch}" = "x" ] ; then
			echo "${debian_pkg_name} (${package_version}${local_patch}~${suite}+${simple_date}) ${suite}; urgency=low" > ${wfile}
		else
			echo "${debian_pkg_name} (${epoch}:${package_version}${local_patch}~${suite}+${simple_date}) ${suite}; urgency=low" > ${wfile}
		fi
	else
		if [ "x${epoch}" = "x" ] ; then
			echo "${debian_pkg_name} (${debian_version}${local_patch}~${suite}+${simple_date}) ${suite}; urgency=low" > ${wfile}
		else
			echo "${debian_pkg_name} (${epoch}:${debian_version}${local_patch}~${suite}+${simple_date}) ${suite}; urgency=low" > ${wfile}
		fi
	fi
	echo "" >> ${wfile}
	echo "  * Rebuild for repos.rcn-ee.com" >> ${wfile}
	echo "" >> ${wfile}
	echo " -- Robert Nelson <robertcnelson@gmail.com>  ${new_date}" >> ${wfile}
	echo "" >> ${wfile}

	if [ "x${clear_changelog}" = "x" ] ; then
		cat ${DIR}/suite/${suite}/debian/changelog >> ${wfile}
	fi
	rm ${DIR}/suite/${suite}/debian/changelog
	mv ${wfile} ${DIR}/suite/${suite}/debian/changelog
}

new_date=`LANG=C date -R`
simple_date=`LANG=C date +%Y%m%d`

dist="debian"
suite="stretch"
if [ -d ${DIR}/suite/${suite}/ ] ; then
	rcn_ee_version="${stretch_version}"
	cat ${DIR}/version.sh | grep -v stretch_version > ${DIR}/new-version.sh
	echo "${suite}_version=\"~${suite}+${simple_date}\"" >> ${DIR}/new-version.sh
	mv ${DIR}/new-version.sh ${DIR}/version.sh
	run
fi

suite="buster"
if [ -d ${DIR}/suite/${suite}/ ] ; then
	rcn_ee_version="${buster_version}"
	cat ${DIR}/version.sh | grep -v buster_version > ${DIR}/new-version.sh
	echo "${suite}_version=\"~${suite}+${simple_date}\"" >> ${DIR}/new-version.sh
	mv ${DIR}/new-version.sh ${DIR}/version.sh
	run
fi

suite="bullseye"
if [ -d ${DIR}/suite/${suite}/ ] ; then
	rcn_ee_version="${bullseye_version}"
	cat ${DIR}/version.sh | grep -v bullseye_version > ${DIR}/new-version.sh
	echo "${suite}_version=\"~${suite}+${simple_date}\"" >> ${DIR}/new-version.sh
	mv ${DIR}/new-version.sh ${DIR}/version.sh
	run
fi

dist="ubuntu"
suite="bionic"
if [ -d ${DIR}/suite/${suite}/ ] ; then
	rcn_ee_version="${bionic_version}"
	cat ${DIR}/version.sh | grep -v bionic_version > ${DIR}/new-version.sh
	echo "${suite}_version=\"~${suite}+${simple_date}\"" >> ${DIR}/new-version.sh
	mv ${DIR}/new-version.sh ${DIR}/version.sh
	run
fi

suite="focal"
if [ -d ${DIR}/suite/${suite}/ ] ; then
	rcn_ee_version="${focal_version}"
	cat ${DIR}/version.sh | grep -v focal_version > ${DIR}/new-version.sh
	echo "${suite}_version=\"~${suite}+${simple_date}\"" >> ${DIR}/new-version.sh
	mv ${DIR}/new-version.sh ${DIR}/version.sh
	run
fi

suite="jammy"
if [ -d ${DIR}/suite/${suite}/ ] ; then
	rcn_ee_version="${jammy_version}"
	cat ${DIR}/version.sh | grep -v jammy_version > ${DIR}/new-version.sh
	echo "${suite}_version=\"~${suite}+${simple_date}\"" >> ${DIR}/new-version.sh
	mv ${DIR}/new-version.sh ${DIR}/version.sh
	run
fi

#
