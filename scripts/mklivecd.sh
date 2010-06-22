#! /bin/bash
pushd $(dirname "$0")/..
[ -d  tmp ] || mkdir tmp
[ -d  cache ] || mkdir cache
livecd-creator --tmpdir=tmp --cache=cache --config=ks/oj/oj-livecd-desktop.ks --fslabel=ojuba-4-a4-live-$(uname -p)
popd


