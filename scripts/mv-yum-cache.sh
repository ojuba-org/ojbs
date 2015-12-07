#! /bin/bash

[ "$UID" -eq 0 ] || {
  echo "run me as root"
  exit 1
}
d=$(dirname "$0")
d="$(readlink -f $d)"
pushd "$d/.."
. buildsys.conf

find /var/cache/yum/ -type f -name '*.rpm' | xargs mv -t localrepos/cached/

pushd localrepos/cached/
[ -d ../.createrepo-cache/ ] || mkdir ../.createrepo-cache/
bash "$d/create-current-repo.sh"
popd

popd

