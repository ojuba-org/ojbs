#! /bin/bash
d=$(dirname "$0")
d="$(readlink -f $d)"
pushd "$d/.."
. buildsys.conf

cp -a ../oj4rpms/*.rpm localrepos/oj_x86_64/

popd

