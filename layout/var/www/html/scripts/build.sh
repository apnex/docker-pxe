#!/bin/bash

cd layout
tar zcvf layout.tar.gz *
mv layout.tar.gz ../
cd ..
docker build -t apnex/control-pxe -f ./control-pxe.docker .
rm layout.tar.gz
