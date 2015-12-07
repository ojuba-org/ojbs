#! /bin/bash

pushd $(dirname "$0")/..
config_dir=$(pwd)
. buildsys.conf
# to save ojbs folder clean
buil_dir=$(readlink -f ..)/${base_arch}/
tmp=${buil_dir}tmp
cache=${buil_dir}cache
[ -d  $tmp ] || mkdir -p $tmp
[ -d  $cache ] || mkdir -p $cache
cd $buil_dir
time livecd-creator -dv --tmpdir=$tmp --cache=$cache --config=${config_dir}/ks/oj/ojuba-livecd-desktop.ks --fslabel=ojuba-$ojuba_release-live-$(uname -p) 2>&1 | tee ${buil_dir}/../LOG/out-$(uname -p)-$(date +%Y-%m-%d_%H%M%S).txt
chown -R $user ..
popd


