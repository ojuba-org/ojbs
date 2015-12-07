#! /bin/bash

[ "$UID" -eq 0 ] || {
  echo "run me as root"
  exit 1
}
d=$(dirname "$0")
d="$(readlink -f $d)"
pushd "$d/.."
  for i in localrepos/[^.]*
  do
  pushd "$i"
    [ -d ../.createrepo-cache/ ] || mkdir ../.createrepo-cache/
    bash "$d/create-current-repo.sh"
  popd
  done
popd

