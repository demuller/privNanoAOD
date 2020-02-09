#!/usr/bin/env bash

if [ $CMSSW_BASE ]
then

    rm -f $CMSSW_BASE/src/PhysicsTools/NanoAOD/python/nano_cff.py
    ln -s $PWD/nano_cff.py $CMSSW_BASE/src/PhysicsTools/NanoAOD/python/nano_cff.py

    rm -f $CMSSW_BASE/src/PhysicsTools/NanoAOD/plugins/GenWeightsTableProducer.cc
    ln -s $PWD/GenWeightsTableProducer.cc $CMSSW_BASE/src/PhysicsTools/NanoAOD/plugins/GenWeightsTableProducer.cc

    echo "files modfied!"

else
    echo "no CMSSW found!"
fi


