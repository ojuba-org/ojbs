#! /bin/bash
[ -d ../.createrepo-cache/ ] || {
  echo "can't find .createrepo-cache "
  exit 1
}

[ -d ../.old_rpms ] || mkdir ../.old_rpms/
repomanage -o  . | xargs -r mv -t ../.old_rpms/
[ -f comps.xml ] || ln -s ../../comps/oj-comps.xml comps.xml

cc="../.createrepo-cache/$(basename $PWD)"
[ -d "$cc" ] || mkdir -p "$cc"
createrepo -g comps.xml -c "$cc" --update -d .


