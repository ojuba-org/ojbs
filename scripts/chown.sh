#! /bin/bash
d=$(dirname "$0")
d="$(readlink -f $d)"
pushd "$d/.."
. buildsys.conf

chown -R $user .

popd

