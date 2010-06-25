#! /bin/bash
pushd $(dirname "$0")/..
. buildsys.conf
[ -d  tmp ] || mkdir tmp
[ -d  cache ] || mkdir cache
livecd-creator --tmpdir=tmp --cache=cache --config=ks/oj/oj-livecd-desktop.ks --fslabel=ojuba-$ojuba_release-live-$(uname -p)
popd


