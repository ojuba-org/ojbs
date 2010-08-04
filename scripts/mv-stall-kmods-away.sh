#! /bin/bash
[ $# -lt 1 ] && {
  echo "pass me kernel release"
  exit 1
}
r=$1
pushd $(dirname "$0")/..
. buildsys.conf
[ -d  localrepos/.old_rpms ] || mkdir localrepos/.old_rpms
dirs=$( ls -d localrepos/[^.]* | grep -v wine )
find $dirs -name '*.i[3456]86.rpm' | xargs -r /bin/mv -t localrepos/.i686
find $dirs -name 'kmod-*.rpm' -not -name 'kmod*-'"$r"'*.rpm' 
popd
