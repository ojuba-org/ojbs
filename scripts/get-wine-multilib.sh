#! /bin/bash
[ $( uname -p ) != "x86_64"] && {
  echo "not needed"
  exit 1
}

pushd $(dirname "$0")/..
. buildsys.conf
[ -d  localrepos/wine ] || mkdir localrepos/wine

yumdownloader --destdir=localrepos/wine --resolve wine

popd
