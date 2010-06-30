#! /bin/bash
pushd $(dirname "$0")/..
. buildsys.conf
[ -d  localrepos/.debug ] || mkdir localrepos/.debug
find cache -name '*.rpm' -and -not '*-debuginfo.*.rpm' | xargs -r /bin/mv -t localrepos/cached
find pungi* -name '*.rpm' -and -not '*-debuginfo.*.rpm' | xargs -r /bin/mv -t localrepos/cached
rpm --resign localrepos/[^.]*/*.rpm

popd
