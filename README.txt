
  * edit buildsys.conf
  * run scripts/comps-update.sh
  * run scripts/comps-get-xsl.sh
  * run scripts/mk-oj-repo.sh
  * manually edit ks/oj/repos-online.ks
  
  * you may need to edit scripts/comps-fix.sh  < we have to edit this file.

  * run scripts/comps-fix.sh 
  * make sure it gives "comps/oj-comps.xml validates"  < we have bug here? i can't validate comps file :(
   
  * mkdir localrepos/cached
  * mkdir localrepos/any-thing
  * you may use scripts/mv-dnf-cache.sh
  * run scripts/create-all-repos.sh
  * run set-on-line.sh then build
  * run scripts/cp-build-cache.sh
  * then set-off-line.sh then build again
  
  * run scripts/mklivecd.sh
  
NOTES:
  * your repos should have ojuba-release>fedora-release and releated packages
  * ojuba-release
  * ojuba-docs (for ojuba-release)
  * your repos should ojuba patched version of
  * anaconda
  * system-config-keyboard
  * system-setup-keyboard
  * system-config-keyboard should be installed on host machine BEFORE building system-setup-keyboard
  * not to be confusing with xkeyboard-config which is for right alt-shift bug
  * dont forget to review scripts directory 
URLS:
  * http://git.fedorahosted.org/git/comps
  * https://git.fedorahosted.org/cgit/spin-kickstarts.git/
