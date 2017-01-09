#!/bin/bash

for d in `ls | grep taux`;
do
    cd $d;
    echo "Working dir:" `pwd`
    check_MITgcm
    suff=${d:4}
    dest="$D/projects/drag_strat/output/$suff/"
    echo "Destination: $dest"
    mkdir -p $dest
    rm STD*
    rm -fv *Stave.*
    mv -fv *tave.* $dest
    cd ..
done

