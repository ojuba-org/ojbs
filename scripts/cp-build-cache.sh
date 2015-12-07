#! /bin/bash

[ "$UID" -eq 0 ] || {
  echo "run me as root"
  exit 1
}
d=$(dirname "$0")
d="$(readlink -f $d)"
pushd "$d/.."
. buildsys.conf

find cache -type f -name '*.rpm' | xargs cp -t localrepos/cached/
pushd localrepos/cached/
[ -d ../.createrepo-cache/ ] || mkdir ../.createrepo-cache/
bash "$d/create-current-repo.sh"
popd

popd

