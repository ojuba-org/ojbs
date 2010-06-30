#! /bin/bash

[ $( uname -p ) != "x86_64"] && {
  echo "not needed"
  exit 1
}

pushd $(dirname "$0")/..
. buildsys.conf
[ -d  localrepos/.i686 ] || mkdir localrepos/.i686
# all localrepos except .* and wine
dirs=$( ls -d localrepos/[^.]* | grep -v wine )
find $dirs -name '*.i[3456]86.rpm' | xargs -r /bin/mv -t localrepos/.i686

popd
