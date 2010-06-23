#! /bin/bash
pushd $(dirname "$0")/..
. buildsys.conf
[ -d  pungi_result ] || mkdir pungi_result
[ -d  pungi_cache ] || mkdir pungi_cache

pungi --name ojuba --ver $ojuba_release --flavor=Desktop --nosource \
  --relnotefilere 'GPL README-BURNING-ISOS-en_US.txt ^RPM-GPG ^LICENSE' \
  --relnotedirre '.*ojuba-documents' \
  --relnotepkgs 'ojuba-samples ojuba-release ojuba-release-notes' \
  -c ks/oj/oj-install.ks --cachedir=$PWD/pungi_cache --destdir=$PWD/pungi_result 1>out.txt 2>err.txt

popd


