#! /bin/bash
pushd $(dirname "$0")/..
. buildsys.conf
[ -d  tmp ] || mkdir tmp
[ -d  cache ] || mkdir cache
time livecd-creator -dv --tmpdir=tmp --cache=cache --config=ks/oj/fedora-livecd-desktop.ks --fslabel=ojuba-$ojuba_release-live-$(uname -p) 2>&1 | tee out-$(date +%Y-%m-%d).txt
popd


