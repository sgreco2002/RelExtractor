#!/bin/bash
USR=`whoami`
readarray PKGLIST < /home/$USR/RelExtractor/package.list
for ITERATOR in ${PKGLIST[@]}; do
        IFS=#  read ART SHL DB <<< "$ITERATOR"
        RELVAL=`$SHL $DB`
        echo "$ART#$RELVAL"
done
exit 0
