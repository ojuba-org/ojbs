#! /bin/bash
pushd $(dirname "$0")/..
. buildsys.conf
[ -d  localrepos/.debug ] || mkdir localrepos/.debug
find localrepos/[^.]* -name '*-debuginfo.*.rpm' | xargs -r /bin/mv -t localrepos/.debug
popd
