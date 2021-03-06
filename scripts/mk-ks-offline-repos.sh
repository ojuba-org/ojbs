#! /bin/bash
d=$(dirname "$0")
d="$(readlink -f $d)"
pushd "$d/../localrepos/"
  . ../buildsys.conf
  echo "# generated by $( basename $0 )"  > ../ks/oj/repos-offline.ks
  for i in [^.]*
  do
  echo "repo --name=$i --baseurl=file://$PWD/$i" >> ../ks/oj/repos-offline.ks
  done
  [ ! -z $oj_in_offline ] && echo "%include repos-oj.ks" >> ../ks/oj/repos-offline.ks
popd


