#!/bin/bash
rm -rf magic magic.mgc
mkdir magic
cp Header Localstuff $(find Magdir -type f) magic
../../../out/host/linux-x86/bin/file -C -m magic
rm -rf magic
