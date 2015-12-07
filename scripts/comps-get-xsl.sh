#! /bin/bash
pushd $(dirname "$0")/..
#[ -f /usr/share/pungi/comps-cleanup.xsl ] && cp /usr/share/pungi/comps-cleanup.xsl comps/comps-cleanup.xsl ||
curl -o comps/comps-cleanup.xsl 'https://git.fedorahosted.org/cgit/comps.git/plain/comps-cleanup.xsl'
curl -o comps/comps.rng 'https://git.fedorahosted.org/cgit/comps.git/plain/comps.rng'
curl -o comps/comps.dtd 'https://git.fedorahosted.org/cgit/comps.git/plain/comps.dtd'
popd
